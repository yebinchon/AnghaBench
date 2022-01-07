; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jisx0213.h_euc_jisx0213_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jisx0213.h_euc_jisx0213_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16 }

@euc_jisx0213_comp_table02e5_idx = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table02e5_len = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table02e9_idx = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table02e9_len = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table0300_idx = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table0300_len = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table0301_idx = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table0301_len = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table309a_idx = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table309a_len = common dso_local global i32 0, align 4
@euc_jisx0213_comp_table_data = common dso_local global %struct.TYPE_5__* null, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32)* @euc_jisx0213_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc_jisx0213_wctomb(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  store i16 %17, i16* %11, align 2
  %18 = load i16, i16* %11, align 2
  %19 = icmp ne i16 %18, 0
  br i1 %19, label %20, label %127

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 741
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @euc_jisx0213_comp_table02e5_idx, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @euc_jisx0213_comp_table02e5_len, align 4
  store i32 %25, i32* %13, align 4
  br label %55

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 745
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @euc_jisx0213_comp_table02e9_idx, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @euc_jisx0213_comp_table02e9_len, align 4
  store i32 %31, i32* %13, align 4
  br label %54

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 768
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @euc_jisx0213_comp_table0300_idx, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @euc_jisx0213_comp_table0300_len, align 4
  store i32 %37, i32* %13, align 4
  br label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 769
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @euc_jisx0213_comp_table0301_idx, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @euc_jisx0213_comp_table0301_len, align 4
  store i32 %43, i32* %13, align 4
  br label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 12442
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @euc_jisx0213_comp_table309a_idx, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @euc_jisx0213_comp_table309a_len, align 4
  store i32 %49, i32* %13, align 4
  br label %51

50:                                               ; preds = %44
  br label %106

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %69, %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @euc_jisx0213_comp_table_data, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %11, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %75

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = icmp ugt i32 %73, 0
  br i1 %74, label %56, label %75

75:                                               ; preds = %69, %67
  %76 = load i32, i32* %13, align 4
  %77 = icmp ugt i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %103

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @euc_jisx0213_comp_table_data, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i16, i16* %86, align 2
  store i16 %87, i16* %11, align 2
  %88 = load i16, i16* %11, align 2
  %89 = zext i16 %88 to i32
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %94, align 1
  %95 = load i16, i16* %11, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8 %98, i8* %100, align 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i16 0, i16* %102, align 2
  store i32 2, i32* %5, align 4
  br label %258

103:                                              ; preds = %78
  %104 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %104, i32* %5, align 4
  br label %258

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %110, i32* %5, align 4
  br label %258

111:                                              ; preds = %106
  %112 = load i16, i16* %11, align 2
  %113 = zext i16 %112 to i32
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %116, i8* %118, align 1
  %119 = load i16, i16* %11, align 2
  %120 = zext i16 %119 to i32
  %121 = and i32 %120, 255
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 %122, i8* %124, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8* %126, i8** %7, align 8
  store i32 2, i32* %10, align 4
  br label %127

127:                                              ; preds = %111, %4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 128
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 %136, i8* %138, align 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i16 0, i16* %140, align 2
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %258

143:                                              ; preds = %130
  %144 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %144, i32* %5, align 4
  br label %258

145:                                              ; preds = %127
  %146 = load i32, i32* %8, align 4
  %147 = icmp sge i32 %146, 65377
  br i1 %147, label %148, label %170

148:                                              ; preds = %145
  %149 = load i32, i32* %8, align 4
  %150 = icmp sle i32 %149, 65439
  br i1 %150, label %151, label %170

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 2
  %155 = icmp sge i32 %152, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  store i8 -114, i8* %158, align 1
  %159 = load i32, i32* %8, align 4
  %160 = sub nsw i32 %159, 65216
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  store i8 %161, i8* %163, align 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i16 0, i16* %165, align 2
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %5, align 4
  br label %258

168:                                              ; preds = %151
  %169 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %169, i32* %5, align 4
  br label %258

170:                                              ; preds = %148, %145
  %171 = load i32, i32* %8, align 4
  %172 = call zeroext i16 @ucs4_to_jisx0213(i32 %171)
  store i16 %172, i16* %14, align 2
  %173 = load i16, i16* %14, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %256

176:                                              ; preds = %170
  %177 = load i16, i16* %14, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 128
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %176
  %182 = load i16, i16* %14, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %183, 32768
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 (...) @abort() #3
  unreachable

188:                                              ; preds = %181
  %189 = load i16, i16* %14, align 2
  %190 = zext i16 %189 to i32
  %191 = or i32 %190, 32896
  %192 = trunc i32 %191 to i16
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i16 %192, i16* %194, align 2
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 0
  store i32 %196, i32* %5, align 4
  br label %258

197:                                              ; preds = %176
  %198 = load i16, i16* %14, align 2
  %199 = zext i16 %198 to i32
  %200 = and i32 %199, 32768
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %230

202:                                              ; preds = %197
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 3
  %206 = icmp sge i32 %203, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %202
  %208 = load i8*, i8** %7, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  store i8 -113, i8* %209, align 1
  %210 = load i16, i16* %14, align 2
  %211 = zext i16 %210 to i32
  %212 = ashr i32 %211, 8
  %213 = or i32 %212, 128
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  store i8 %214, i8* %216, align 1
  %217 = load i16, i16* %14, align 2
  %218 = zext i16 %217 to i32
  %219 = and i32 %218, 255
  %220 = or i32 %219, 128
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  store i8 %221, i8* %223, align 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store i16 0, i16* %225, align 2
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 3
  store i32 %227, i32* %5, align 4
  br label %258

228:                                              ; preds = %202
  %229 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %229, i32* %5, align 4
  br label %258

230:                                              ; preds = %197
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 2
  %234 = icmp sge i32 %231, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %230
  %236 = load i16, i16* %14, align 2
  %237 = zext i16 %236 to i32
  %238 = ashr i32 %237, 8
  %239 = or i32 %238, 128
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %7, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  store i8 %240, i8* %242, align 1
  %243 = load i16, i16* %14, align 2
  %244 = zext i16 %243 to i32
  %245 = and i32 %244, 255
  %246 = or i32 %245, 128
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8 %247, i8* %249, align 1
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  store i16 0, i16* %251, align 2
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 2
  store i32 %253, i32* %5, align 4
  br label %258

254:                                              ; preds = %230
  %255 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %255, i32* %5, align 4
  br label %258

256:                                              ; preds = %170
  %257 = load i32, i32* @RET_ILUNI, align 4
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %256, %254, %235, %228, %207, %188, %168, %156, %143, %134, %109, %103, %81
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local zeroext i16 @ucs4_to_jisx0213(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
