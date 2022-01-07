; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_CreateAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_CreateAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, i32* }
%struct.card_bat = type { i64 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32*, i32*, i32*, i64 }

@CARD_FILENAMELEN = common dso_local global i64 0, align 8
@CARD_ERROR_NAMETOOLONG = common dso_local global i32 0, align 4
@CARD_ERROR_FATAL_ERROR = common dso_local global i32 0, align 4
@CARD_MAXFILES = common dso_local global i64 0, align 8
@card_gamecode = common dso_local global i32* null, align 8
@card_company = common dso_local global i32* null, align 8
@CARD_ERROR_EXIST = common dso_local global i32 0, align 4
@CARD_ERROR_NOENT = common dso_local global i32 0, align 4
@CARD_ERROR_INSSPACE = common dso_local global i32 0, align 4
@__card_defaultapicallback = common dso_local global i32* null, align 8
@__card_createfatcallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARD_CreateAsync(i32 %0, i8* %1, i64 %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.card_bat*, align 8
  %19 = alloca %struct.card_dat*, align 8
  %20 = alloca %struct.card_direntry*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %16, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %17, align 8
  store %struct.card_bat* null, %struct.card_bat** %18, align 8
  store %struct.card_dat* null, %struct.card_dat** %19, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @CARD_FILENAMELEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @CARD_ERROR_NAMETOOLONG, align 4
  store i32 %27, i32* %6, align 4
  br label %218

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @__card_getcntrlblock(i32 %29, %struct.TYPE_9__** %17)
  store i32 %30, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %218

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = srem i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %34
  %45 = load i32, i32* @CARD_ERROR_FATAL_ERROR, align 4
  store i32 %45, i32* %6, align 4
  br label %218

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %48 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_9__* %47)
  store %struct.card_dat* %48, %struct.card_dat** %19, align 8
  store i32 -1, i32* %15, align 4
  %49 = load %struct.card_dat*, %struct.card_dat** %19, align 8
  %50 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %49, i32 0, i32 0
  %51 = load %struct.card_direntry*, %struct.card_direntry** %50, align 8
  store %struct.card_direntry* %51, %struct.card_direntry** %20, align 8
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %128, %46
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @CARD_MAXFILES, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %131

56:                                               ; preds = %52
  %57 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %57, i64 %58
  %60 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 255
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %12, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %127

72:                                               ; preds = %56
  %73 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %73, i64 %74
  %76 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i64 (i32*, ...) @memcmp(i32* %77, i8* %78, i64 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %72
  %83 = load i32*, i32** @card_gamecode, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 255
  br i1 %86, label %120, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** @card_company, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %120, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** @card_gamecode, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 255
  br i1 %96, label %97, label %125

97:                                               ; preds = %92
  %98 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %98, i64 %99
  %101 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** @card_gamecode, align 8
  %104 = call i64 (i32*, ...) @memcmp(i32* %102, i32* %103, i32 4)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %97
  %107 = load i32*, i32** @card_company, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 255
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %112, i64 %113
  %115 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** @card_company, align 8
  %118 = call i64 (i32*, ...) @memcmp(i32* %116, i32* %117, i32 2)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111, %87, %82
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %122 = load i32, i32* @CARD_ERROR_EXIST, align 4
  %123 = call i32 @__card_putcntrlblock(%struct.TYPE_9__* %121, i32 %122)
  %124 = load i32, i32* @CARD_ERROR_EXIST, align 4
  store i32 %124, i32* %6, align 4
  br label %218

125:                                              ; preds = %111, %106, %97, %92
  br label %126

126:                                              ; preds = %125, %72
  br label %127

127:                                              ; preds = %126, %71
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %12, align 8
  br label %52

131:                                              ; preds = %52
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %136 = load i32, i32* @CARD_ERROR_NOENT, align 4
  %137 = call i32 @__card_putcntrlblock(%struct.TYPE_9__* %135, i32 %136)
  %138 = load i32, i32* @CARD_ERROR_NOENT, align 4
  store i32 %138, i32* %6, align 4
  br label %218

139:                                              ; preds = %131
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %141 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_9__* %140)
  store %struct.card_bat* %141, %struct.card_bat** %18, align 8
  %142 = load %struct.card_bat*, %struct.card_bat** %18, align 8
  %143 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = mul nsw i64 %144, %147
  %149 = load i64, i64* %9, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %139
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %153 = load i32, i32* @CARD_ERROR_INSSPACE, align 4
  %154 = call i32 @__card_putcntrlblock(%struct.TYPE_9__* %152, i32 %153)
  %155 = load i32, i32* @CARD_ERROR_INSSPACE, align 4
  store i32 %155, i32* %6, align 4
  br label %218

156:                                              ; preds = %139
  %157 = load i32*, i32** %11, align 8
  store i32* %157, i32** %16, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = load i32*, i32** @__card_defaultapicallback, align 8
  store i32* %161, i32** %16, align 8
  br label %162

162:                                              ; preds = %160, %156
  %163 = load i32*, i32** %16, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  store i32* %163, i32** %165, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sdiv i64 %166, %169
  %171 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %171, i64 %173
  %175 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %174, i32 0, i32 3
  store i64 %170, i64* %175, align 8
  %176 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %176, i64 %178
  %180 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @CARD_FILENAMELEN, align 8
  %183 = call i32 @memset(i32* %181, i32 0, i64 %182)
  %184 = load %struct.card_direntry*, %struct.card_direntry** %20, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %184, i64 %186
  %188 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i64, i64* %13, align 8
  %192 = add nsw i64 %191, 1
  %193 = call i32 @memcpy(i32* %189, i8* %190, i64 %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store %struct.TYPE_8__* %194, %struct.TYPE_8__** %196, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i64, i64* %9, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sdiv i64 %204, %207
  %209 = load i32, i32* @__card_createfatcallback, align 4
  %210 = call i32 @__card_allocblock(i32 %203, i64 %208, i32 %209)
  store i32 %210, i32* %14, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %162
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @__card_putcntrlblock(%struct.TYPE_9__* %213, i32 %214)
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %6, align 4
  br label %218

217:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  br label %218

218:                                              ; preds = %217, %212, %151, %134, %120, %44, %32, %26
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @__card_getcntrlblock(i32, %struct.TYPE_9__**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_9__*) #1

declare dso_local i64 @memcmp(i32*, ...) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @__card_allocblock(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
