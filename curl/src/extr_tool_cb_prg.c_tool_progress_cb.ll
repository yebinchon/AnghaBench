; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_prg.c_tool_progress_cb.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_prg.c_tool_progress_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.ProgressData = type { i64, i64, i32, %struct.timeval, i32, i64 }

@CURL_OFF_T_MAX = common dso_local global i64 0, align 8
@MAX_BARLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\0D%%-%ds %%5.1f%%%%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tool_progress_cb(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.ProgressData*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [40 x i8], align 16
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = call i32 (...) @tvnow()
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.ProgressData*
  store %struct.ProgressData* %26, %struct.ProgressData** %13, align 8
  %27 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %28 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %5
  %32 = load i64, i64* @CURL_OFF_T_MAX, align 8
  %33 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %34 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31, %5
  %42 = load i64, i64* @CURL_OFF_T_MAX, align 8
  store i64 %42, i64* %14, align 8
  br label %51

43:                                               ; preds = %31
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %48 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %43, %41
  %52 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %53 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @CURL_OFF_T_MAX, align 8
  %58 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %59 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %62, %63
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56, %51
  %67 = load i64, i64* @CURL_OFF_T_MAX, align 8
  store i64 %67, i64* %15, align 8
  br label %76

68:                                               ; preds = %56
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %73 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %68, %66
  %77 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %78 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %76
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %86 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %201

91:                                               ; preds = %84
  %92 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %93 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %93, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @tvdiff(i32 %95, i32 %97)
  %99 = icmp slt i64 %98, 100
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %14, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %201

105:                                              ; preds = %100, %91
  br label %106

106:                                              ; preds = %105
  br label %126

107:                                              ; preds = %81
  %108 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %109 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %109, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @tvdiff(i32 %111, i32 %113)
  %115 = icmp slt i64 %114, 100
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %201

117:                                              ; preds = %107
  %118 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %121 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @fly(%struct.ProgressData* %118, i32 %124)
  br label %126

126:                                              ; preds = %117, %106
  br label %127

127:                                              ; preds = %126, %76
  %128 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %129 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* %14, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %189

134:                                              ; preds = %127
  %135 = load i64, i64* %15, align 8
  %136 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %137 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %189

140:                                              ; preds = %134
  %141 = load i32, i32* @MAX_BARLENGTH, align 4
  %142 = add nsw i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = call i8* @llvm.stacksave()
  store i8* %144, i8** %16, align 8
  %145 = alloca i8, i64 %143, align 16
  store i64 %143, i64* %17, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %14, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i64, i64* %15, align 8
  store i64 %150, i64* %14, align 8
  br label %151

151:                                              ; preds = %149, %140
  %152 = load i64, i64* %15, align 8
  %153 = sitofp i64 %152 to double
  %154 = load i64, i64* %14, align 8
  %155 = sitofp i64 %154 to double
  %156 = fdiv double %153, %155
  store double %156, double* %19, align 8
  %157 = load double, double* %19, align 8
  %158 = fmul double %157, 1.000000e+02
  store double %158, double* %20, align 8
  %159 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %160 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 7
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* %21, align 4
  %164 = sitofp i32 %163 to double
  %165 = load double, double* %19, align 8
  %166 = fmul double %164, %165
  %167 = fptosi double %166 to i32
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* @MAX_BARLENGTH, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %151
  %172 = load i32, i32* @MAX_BARLENGTH, align 4
  store i32 %172, i32* %22, align 4
  br label %173

173:                                              ; preds = %171, %151
  %174 = load i32, i32* %22, align 4
  %175 = call i32 @memset(i8* %145, i8 signext 35, i32 %174)
  %176 = load i32, i32* %22, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %145, i64 %177
  store i8 0, i8* %178, align 1
  %179 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %180 = load i32, i32* %21, align 4
  %181 = call i32 @msnprintf(i8* %179, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %180)
  %182 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %183 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %186 = load double, double* %20, align 8
  %187 = call i32 @fprintf(i32 %184, i8* %185, i8* %145, double %186)
  %188 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %188)
  br label %189

189:                                              ; preds = %173, %134, %127
  %190 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %191 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @fflush(i32 %192)
  %194 = load i64, i64* %15, align 8
  %195 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %196 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load %struct.ProgressData*, %struct.ProgressData** %13, align 8
  %198 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %197, i32 0, i32 3
  %199 = bitcast %struct.timeval* %198 to i8*
  %200 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 %200, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %189, %116, %104, %90
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @tvnow(...) #1

declare dso_local i64 @tvdiff(i32, i32) #1

declare dso_local i32 @fly(%struct.ProgressData*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, double) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fflush(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
