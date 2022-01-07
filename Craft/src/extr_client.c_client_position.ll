; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_client.c_client_position.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_client.c_client_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_enabled = common dso_local global i32 0, align 4
@client_position.px = internal global float 0.000000e+00, align 4
@client_position.py = internal global float 0.000000e+00, align 4
@client_position.pz = internal global float 0.000000e+00, align 4
@client_position.prx = internal global float 0.000000e+00, align 4
@client_position.pry = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [28 x i8] c"P,%.2f,%.2f,%.2f,%.2f,%.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_position(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [1024 x i8], align 16
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %13 = load i32, i32* @client_enabled, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %75

16:                                               ; preds = %5
  %17 = load float, float* @client_position.px, align 4
  %18 = load float, float* %6, align 4
  %19 = fsub float %17, %18
  %20 = load float, float* @client_position.px, align 4
  %21 = load float, float* %6, align 4
  %22 = fsub float %20, %21
  %23 = fmul float %19, %22
  %24 = load float, float* @client_position.py, align 4
  %25 = load float, float* %7, align 4
  %26 = fsub float %24, %25
  %27 = load float, float* @client_position.py, align 4
  %28 = load float, float* %7, align 4
  %29 = fsub float %27, %28
  %30 = fmul float %26, %29
  %31 = fadd float %23, %30
  %32 = load float, float* @client_position.pz, align 4
  %33 = load float, float* %8, align 4
  %34 = fsub float %32, %33
  %35 = load float, float* @client_position.pz, align 4
  %36 = load float, float* %8, align 4
  %37 = fsub float %35, %36
  %38 = fmul float %34, %37
  %39 = fadd float %31, %38
  %40 = load float, float* @client_position.prx, align 4
  %41 = load float, float* %9, align 4
  %42 = fsub float %40, %41
  %43 = load float, float* @client_position.prx, align 4
  %44 = load float, float* %9, align 4
  %45 = fsub float %43, %44
  %46 = fmul float %42, %45
  %47 = fadd float %39, %46
  %48 = load float, float* @client_position.pry, align 4
  %49 = load float, float* %10, align 4
  %50 = fsub float %48, %49
  %51 = load float, float* @client_position.pry, align 4
  %52 = load float, float* %10, align 4
  %53 = fsub float %51, %52
  %54 = fmul float %50, %53
  %55 = fadd float %47, %54
  store float %55, float* %11, align 4
  %56 = load float, float* %11, align 4
  %57 = fpext float %56 to double
  %58 = fcmp olt double %57, 1.000000e-04
  br i1 %58, label %59, label %60

59:                                               ; preds = %16
  br label %75

60:                                               ; preds = %16
  %61 = load float, float* %6, align 4
  store float %61, float* @client_position.px, align 4
  %62 = load float, float* %7, align 4
  store float %62, float* @client_position.py, align 4
  %63 = load float, float* %8, align 4
  store float %63, float* @client_position.pz, align 4
  %64 = load float, float* %9, align 4
  store float %64, float* @client_position.prx, align 4
  %65 = load float, float* %10, align 4
  store float %65, float* @client_position.pry, align 4
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %67 = load float, float* %6, align 4
  %68 = load float, float* %7, align 4
  %69 = load float, float* %8, align 4
  %70 = load float, float* %9, align 4
  %71 = load float, float* %10, align 4
  %72 = call i32 @snprintf(i8* %66, i32 1024, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), float %67, float %68, float %69, float %70, float %71)
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %74 = call i32 @client_send(i8* %73)
  br label %75

75:                                               ; preds = %60, %59, %15
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, float, float, float, float, float) #1

declare dso_local i32 @client_send(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
