; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_append_float_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_append_float_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @network_mysqld_proto_binary_append_float_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_proto_binary_append_float_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.anon, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @network_mysqld_type_get_double(i32* %13, double* %7)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %56

22:                                               ; preds = %16
  %23 = load double, double* %7, align 8
  %24 = fptrunc double %23 to float
  %25 = bitcast %union.anon* %6 to float*
  store float %24, float* %25, align 4
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %48, %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %30, 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %51

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = bitcast %union.anon* %6 to [4 x i32]*
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @network_mysqld_proto_append_int8(i32* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %37, %34
  %46 = phi i1 [ true, %34 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %26

51:                                               ; preds = %32
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 -1, i32 0
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @network_mysqld_type_get_double(i32*, double*) #1

declare dso_local i64 @network_mysqld_proto_append_int8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
