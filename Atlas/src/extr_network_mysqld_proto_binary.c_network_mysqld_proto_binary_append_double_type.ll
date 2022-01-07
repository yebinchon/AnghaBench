; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_append_double_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_append_double_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double, [24 x i8] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @network_mysqld_proto_binary_append_double_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_proto_binary_append_double_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast %union.anon* %6 to double*
  %14 = call i64 @network_mysqld_type_get_double(i32* %12, double* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ true, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %53

22:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %27, 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast %union.anon* %6 to [8 x i32]*
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %36, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @network_mysqld_proto_append_int8(i32* %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %34, %31
  %43 = phi i1 [ true, %31 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %23

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -1, i32 0
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @network_mysqld_type_get_double(i32*, double*) #1

declare dso_local i64 @network_mysqld_proto_append_int8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
