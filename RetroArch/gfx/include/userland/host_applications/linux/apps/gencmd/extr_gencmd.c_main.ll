; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/gencmd/extr_gencmd.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/gencmd/extr_gencmd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"VCHI initialization failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"VCHI connection failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"vc_gencmd_send returned %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"vc_gencmd_read_response returned %d\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str.9 = private unnamed_addr constant [44 x i8] c"Time took %f seconds (%f msecs) (%f usecs)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"VCHI disconnect failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25, %19
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = call i32 (...) @vcos_init()
  %43 = call i64 @vchi_initialise(i32* %7)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %160

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @vchi_connect(i32* null, i32 0, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %160

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @vc_vchi_gencmd_init(i32 %54, i32** %8, i32 1)
  %56 = load i32, i32* %4, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %152

58:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %59, align 16
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  store i32 1, i32* %15, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @vcos_safe_strcpy(i8* %75, i8* %80, i32 1024, i64 %81)
  store i64 %82, i64* %11, align 8
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @vcos_safe_strcpy(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024, i64 %84)
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i64 (...) @clock()
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %92, %89
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %96 = call i32 @vc_gencmd_send(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  store i32 %96, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %103 = call i32 @vc_gencmd_read_response(i8* %102, i32 1024)
  store i32 %103, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i64 (...) @clock()
  store i64 %112, i64* %13, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = sub nsw i64 %117, %118
  %120 = sitofp i64 %119 to double
  %121 = load double, double* @CLOCKS_PER_SEC, align 8
  %122 = fdiv double %120, %121
  store double %122, double* %14, align 8
  %123 = load double, double* %14, align 8
  %124 = load double, double* %14, align 8
  %125 = fmul double %124, 1.000000e+03
  %126 = load double, double* %14, align 8
  %127 = fmul double %126, 1.000000e+06
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), double %123, double %125, double %127)
  br label %129

129:                                              ; preds = %116, %113
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %131 = load i8, i8* %130, align 16
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %136 = call i32 @strlen(i8* %135)
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %145 = load i32, i32* @stdout, align 4
  %146 = call i32 @fputs(i8* %144, i32 %145)
  br label %150

147:                                              ; preds = %134
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %147, %143
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %53
  %153 = call i32 (...) @vc_gencmd_stop()
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @vchi_disconnect(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %160

159:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %157, %51, %45
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @vcos_init(...) #1

declare dso_local i64 @vchi_initialise(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vchi_connect(i32*, i32, i32) #1

declare dso_local i32 @vc_vchi_gencmd_init(i32, i32**, i32) #1

declare dso_local i64 @vcos_safe_strcpy(i8*, i8*, i32, i64) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @vc_gencmd_send(i8*, i8*) #1

declare dso_local i32 @vc_gencmd_read_response(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @vc_gencmd_stop(...) #1

declare dso_local i64 @vchi_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
