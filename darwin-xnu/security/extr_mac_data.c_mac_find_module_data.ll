; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_data.c_mac_find_module_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_data.c_mac_find_module_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_module_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_find_module_data(%struct.mac_module_data* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca %struct.mac_module_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mac_module_data* %0, %struct.mac_module_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32, i32* @ENOENT, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mac_module_data*, %struct.mac_module_data** %5, align 8
  %13 = icmp ne %struct.mac_module_data* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.mac_module_data*, %struct.mac_module_data** %5, align 8
  %18 = getelementptr inbounds %struct.mac_module_data, %struct.mac_module_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.mac_module_data*, %struct.mac_module_data** %5, align 8
  %24 = getelementptr inbounds %struct.mac_module_data, %struct.mac_module_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i8* %22, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %21
  %34 = load %struct.mac_module_data*, %struct.mac_module_data** %5, align 8
  %35 = getelementptr inbounds %struct.mac_module_data, %struct.mac_module_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  %43 = load %struct.mac_module_data*, %struct.mac_module_data** %5, align 8
  %44 = getelementptr inbounds %struct.mac_module_data, %struct.mac_module_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %9, align 4
  br label %56

52:                                               ; preds = %21
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %15

56:                                               ; preds = %33, %15
  br label %57

57:                                               ; preds = %56, %4
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
