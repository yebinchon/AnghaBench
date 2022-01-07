; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_type.c_network_mysqld_type_set_double.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_type.c_network_mysqld_type_set_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_type_set_double(%struct.TYPE_4__* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.TYPE_4__*, double)**
  %9 = load i32 (%struct.TYPE_4__*, double)*, i32 (%struct.TYPE_4__*, double)** %8, align 8
  %10 = icmp eq i32 (%struct.TYPE_4__*, double)* null, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.TYPE_4__*, double)**
  %16 = load i32 (%struct.TYPE_4__*, double)*, i32 (%struct.TYPE_4__*, double)** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load double, double* %5, align 8
  %19 = call i32 %16(%struct.TYPE_4__* %17, double %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
