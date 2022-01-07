; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_votrax_process.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_votrax_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@votrax_process.last_sample = internal global i32 0, align 4
@votrax_process.last_sample2 = internal global i32 0, align 4
@votrax_process.startpos = internal global double 0.000000e+00, align 8
@votrax_process.have = internal global i32 0, align 4
@ratio = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @votrax_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @votrax_process(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load double, double* @votrax_process.startpos, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sitofp i32 %17 to double
  %19 = load double, double* @ratio, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %15, %20
  %22 = fptosi double %21 to i32
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  %23 = load i32, i32* @votrax_process.have, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load i32, i32* @votrax_process.last_sample, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @votrax_process.last_sample2, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = add nsw i32 %35, 1
  %37 = sub nsw i32 %36, 2
  %38 = call i32 @Votrax_Update(i32 0, i32* %33, i32 %37)
  br label %78

39:                                               ; preds = %3
  %40 = load i32, i32* @votrax_process.have, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* @votrax_process.last_sample, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = add nsw i32 %49, 1
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @Votrax_Update(i32 0, i32* %47, i32 %51)
  br label %77

53:                                               ; preds = %39
  %54 = load i32, i32* @votrax_process.have, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = add nsw i32 %59, 1
  %61 = call i32 @Votrax_Update(i32 0, i32* %57, i32 %60)
  br label %76

62:                                               ; preds = %53
  %63 = load i32, i32* @votrax_process.have, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @votrax_process.have, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @Votrax_Update(i32 0, i32* %66, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = add nsw i32 %72, 1
  %74 = call i32 @Votrax_Update(i32 0, i32* %70, i32 %73)
  br label %75

75:                                               ; preds = %65, %62
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %42
  br label %78

78:                                               ; preds = %77, %25
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %126, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %79
  %84 = load double, double* @votrax_process.startpos, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sitofp i32 %85 to double
  %87 = load double, double* @ratio, align 8
  %88 = fmul double %86, %87
  %89 = fadd double %84, %88
  %90 = fptosi double %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load double, double* @votrax_process.startpos, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sitofp i32 %92 to double
  %94 = load double, double* @ratio, align 8
  %95 = fmul double %93, %94
  %96 = fadd double %91, %95
  %97 = load i32, i32* %8, align 4
  %98 = sitofp i32 %97 to double
  %99 = fsub double %96, %98
  store double %99, double* %9, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sitofp i32 %111 to double
  %113 = load double, double* %9, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sitofp i32 %116 to double
  %118 = fmul double %113, %117
  %119 = fadd double %112, %118
  %120 = fptosi double %119 to i32
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %83
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %79

129:                                              ; preds = %79
  %130 = load double, double* @votrax_process.startpos, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sitofp i32 %131 to double
  %133 = load double, double* @ratio, align 8
  %134 = fmul double %132, %133
  %135 = fadd double %130, %134
  %136 = fptosi double %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load double, double* @votrax_process.startpos, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sitofp i32 %138 to double
  %140 = load double, double* @ratio, align 8
  %141 = fmul double %139, %140
  %142 = fadd double %137, %141
  %143 = load i32, i32* %11, align 4
  %144 = sitofp i32 %143 to double
  %145 = fsub double %142, %144
  store double %145, double* @votrax_process.startpos, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %129
  store i32 2, i32* @votrax_process.have, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* @votrax_process.last_sample, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* @votrax_process.last_sample2, align 4
  br label %178

161:                                              ; preds = %129
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  store i32 1, i32* @votrax_process.have, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* @votrax_process.last_sample, align 4
  br label %177

172:                                              ; preds = %161
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 2
  %176 = sub nsw i32 %173, %175
  store i32 %176, i32* @votrax_process.have, align 4
  br label %177

177:                                              ; preds = %172, %166
  br label %178

178:                                              ; preds = %177, %149
  ret void
}

declare dso_local i32 @Votrax_Update(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
