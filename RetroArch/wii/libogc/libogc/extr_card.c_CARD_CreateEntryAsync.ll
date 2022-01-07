; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_CreateEntryAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_CreateEntryAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.card_bat = type { i32 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32*, i32*, i32*, i32 }

@CARD_FILENAMELEN = common dso_local global i64 0, align 8
@CARD_ERROR_NAMETOOLONG = common dso_local global i32 0, align 4
@CARD_ERROR_FATAL_ERROR = common dso_local global i32 0, align 4
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_EXIST = common dso_local global i32 0, align 4
@CARD_ERROR_NOENT = common dso_local global i32 0, align 4
@CARD_ERROR_INSSPACE = common dso_local global i32 0, align 4
@__card_defaultapicallback = common dso_local global i32* null, align 8
@__card_createfatcallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARD_CreateEntryAsync(i32 %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.card_bat*, align 8
  %17 = alloca %struct.card_dat*, align 8
  %18 = alloca %struct.card_direntry*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  store %struct.card_bat* null, %struct.card_bat** %16, align 8
  store %struct.card_dat* null, %struct.card_dat** %17, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @CARD_FILENAMELEN, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @CARD_ERROR_NAMETOOLONG, align 4
  store i32 %28, i32* %5, align 4
  br label %246

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__card_getcntrlblock(i32 %30, %struct.TYPE_12__** %15)
  store i32 %31, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %246

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40, %35
  %50 = load i32, i32* @CARD_ERROR_FATAL_ERROR, align 4
  store i32 %50, i32* %5, align 4
  br label %246

51:                                               ; preds = %40
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %53 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_12__* %52)
  store %struct.card_dat* %53, %struct.card_dat** %17, align 8
  store i32 -1, i32* %13, align 4
  %54 = load %struct.card_dat*, %struct.card_dat** %17, align 8
  %55 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %54, i32 0, i32 0
  %56 = load %struct.card_direntry*, %struct.card_direntry** %55, align 8
  store %struct.card_direntry* %56, %struct.card_direntry** %18, align 8
  store i64 0, i64* %10, align 8
  br label %57

57:                                               ; preds = %148, %51
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @CARD_MAXFILES, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %151

61:                                               ; preds = %57
  %62 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %62, i64 %63
  %65 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %147

77:                                               ; preds = %61
  %78 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %78, i64 %79
  %81 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @memcmp(i32* %82, i32* %85, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %77
  %91 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %92 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %140, label %97

97:                                               ; preds = %90
  %98 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %99 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %140, label %104

104:                                              ; preds = %97
  %105 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %106 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 255
  br i1 %110, label %111, label %145

111:                                              ; preds = %104
  %112 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %112, i64 %113
  %115 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %118 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @memcmp(i32* %116, i32* %119, i32 4)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %111
  %123 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %124 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 255
  br i1 %128, label %129, label %145

129:                                              ; preds = %122
  %130 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %130, i64 %131
  %133 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %136 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @memcmp(i32* %134, i32* %137, i32 2)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %129, %97, %90
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %142 = load i32, i32* @CARD_ERROR_EXIST, align 4
  %143 = call i32 @__card_putcntrlblock(%struct.TYPE_12__* %141, i32 %142)
  %144 = load i32, i32* @CARD_ERROR_EXIST, align 4
  store i32 %144, i32* %5, align 4
  br label %246

145:                                              ; preds = %129, %122, %111, %104
  br label %146

146:                                              ; preds = %145, %77
  br label %147

147:                                              ; preds = %146, %76
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %10, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %57

151:                                              ; preds = %57
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %156 = load i32, i32* @CARD_ERROR_NOENT, align 4
  %157 = call i32 @__card_putcntrlblock(%struct.TYPE_12__* %155, i32 %156)
  %158 = load i32, i32* @CARD_ERROR_NOENT, align 4
  store i32 %158, i32* %5, align 4
  br label %246

159:                                              ; preds = %151
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %161 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_12__* %160)
  store %struct.card_bat* %161, %struct.card_bat** %16, align 8
  %162 = load %struct.card_bat*, %struct.card_bat** %16, align 8
  %163 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %164, %167
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %159
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %175 = load i32, i32* @CARD_ERROR_INSSPACE, align 4
  %176 = call i32 @__card_putcntrlblock(%struct.TYPE_12__* %174, i32 %175)
  %177 = load i32, i32* @CARD_ERROR_INSSPACE, align 4
  store i32 %177, i32* %5, align 4
  br label %246

178:                                              ; preds = %159
  %179 = load i32*, i32** %9, align 8
  store i32* %179, i32** %14, align 8
  %180 = load i32*, i32** %14, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = load i32*, i32** @__card_defaultapicallback, align 8
  store i32* %183, i32** %14, align 8
  br label %184

184:                                              ; preds = %182, %178
  %185 = load i32*, i32** %14, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  store i32* %185, i32** %187, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %190, %193
  %195 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %195, i64 %197
  %199 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %198, i32 0, i32 3
  store i32 %194, i32* %199, align 8
  %200 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %200, i64 %202
  %204 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @CARD_FILENAMELEN, align 8
  %207 = call i32 @memset(i32* %205, i32 0, i64 %206)
  %208 = load %struct.card_direntry*, %struct.card_direntry** %18, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %208, i64 %210
  %212 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %11, align 8
  %218 = add nsw i64 %217, 1
  %219 = call i32 @memcpy(i32* %213, i32* %216, i64 %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  store %struct.TYPE_10__* %220, %struct.TYPE_10__** %222, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sdiv i32 %232, %235
  %237 = load i32, i32* @__card_createfatcallback, align 4
  %238 = call i32 @__card_allocblock(i32 %229, i32 %236, i32 %237)
  store i32 %238, i32* %12, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %184
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @__card_putcntrlblock(%struct.TYPE_12__* %241, i32 %242)
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %5, align 4
  br label %246

245:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %246

246:                                              ; preds = %245, %240, %173, %154, %140, %49, %33, %27
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @__card_getcntrlblock(i32, %struct.TYPE_12__**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_12__*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @__card_allocblock(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
