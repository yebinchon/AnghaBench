; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_record_driver_init_first.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_record_driver_init_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (%struct.record_params*)* }
%struct.record_params = type { i32 }

@record_drivers = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i8**, %struct.record_params*)* @record_driver_init_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_driver_init_first(%struct.TYPE_4__** %0, i8** %1, %struct.record_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.record_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.record_params* %2, %struct.record_params** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %39, %3
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @record_drivers, align 8
  %12 = load i32, i32* %8, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @record_drivers, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8* (%struct.record_params*)*, i8* (%struct.record_params*)** %23, align 8
  %25 = load %struct.record_params*, %struct.record_params** %7, align 8
  %26 = call i8* %24(%struct.record_params* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %39

30:                                               ; preds = %17
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @record_drivers, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8**, i8*** %6, align 8
  store i8* %37, i8** %38, align 8
  store i32 1, i32* %4, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %10

42:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
