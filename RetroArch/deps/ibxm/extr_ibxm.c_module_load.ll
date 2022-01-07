; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_module_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Extended Module:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SCRM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @module_load(%struct.data* %0, i8* %1) #0 {
  %3 = alloca %struct.data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.module*, align 8
  store %struct.data* %0, %struct.data** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.data*, %struct.data** %3, align 8
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %9 = call i32 @data_ascii(%struct.data* %7, i32 0, i32 16, i8* %8)
  %10 = call i32 @memcmp(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.data*, %struct.data** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.module* @module_load_xm(%struct.data* %13, i8* %14)
  store %struct.module* %15, %struct.module** %6, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.data*, %struct.data** %3, align 8
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %19 = call i32 @data_ascii(%struct.data* %17, i32 44, i32 4, i8* %18)
  %20 = call i32 @memcmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.data*, %struct.data** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.module* @module_load_s3m(%struct.data* %23, i8* %24)
  store %struct.module* %25, %struct.module** %6, align 8
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.data*, %struct.data** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.module* @module_load_mod(%struct.data* %27, i8* %28)
  store %struct.module* %29, %struct.module** %6, align 8
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.module*, %struct.module** %6, align 8
  ret %struct.module* %32
}

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @data_ascii(%struct.data*, i32, i32, i8*) #1

declare dso_local %struct.module* @module_load_xm(%struct.data*, i8*) #1

declare dso_local %struct.module* @module_load_s3m(%struct.data*, i8*) #1

declare dso_local %struct.module* @module_load_mod(%struct.data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
