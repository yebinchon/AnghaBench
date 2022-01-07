; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_fields.c_f1.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_fields.c_f1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"p->b != 0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"p->a = 0x%x, p->b = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f1(%struct.baz* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.baz*, align 8
  store %struct.baz* %0, %struct.baz** %3, align 8
  %4 = load %struct.baz*, %struct.baz** %3, align 8
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %4, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = load %struct.baz*, %struct.baz** %3, align 8
  %7 = getelementptr inbounds %struct.baz, %struct.baz* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.baz*, %struct.baz** %3, align 8
  %9 = getelementptr inbounds %struct.baz, %struct.baz* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.baz*, %struct.baz** %3, align 8
  %16 = getelementptr inbounds %struct.baz, %struct.baz* %15, i32 0, i32 0
  store i32 3, i32* %16, align 4
  %17 = load %struct.baz*, %struct.baz** %3, align 8
  %18 = getelementptr inbounds %struct.baz, %struct.baz* %17, i32 0, i32 1
  store i32 15, i32* %18, align 4
  %19 = load %struct.baz*, %struct.baz** %3, align 8
  %20 = getelementptr inbounds %struct.baz, %struct.baz* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.baz*, %struct.baz** %3, align 8
  %23 = getelementptr inbounds %struct.baz, %struct.baz* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
