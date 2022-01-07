; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_float_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_float_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @network_mysqld_proto_binary_get_float_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_proto_binary_get_float_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 0, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast %union.anon* %6 to [4 x i32]*
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %23
  %25 = call i64 @network_mysqld_proto_get_int8(i32* %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ true, %17 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %9

33:                                               ; preds = %15
  %34 = bitcast %union.anon* %6 to float*
  %35 = load float, float* %34, align 4
  %36 = fpext float %35 to double
  store double %36, double* %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %4, align 8
  %41 = load double, double* %8, align 8
  %42 = call i64 @network_mysqld_type_set_double(i32* %40, double %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i1 [ true, %33 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 -1, i32 0
  ret i32 %50
}

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i32*) #1

declare dso_local i64 @network_mysqld_type_set_double(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
