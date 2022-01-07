; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Assign.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Exception = type { i32, i32, i32, i32, i32 }

@Exception = common dso_local global i32 0, align 4
@EXCEPTION_MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Exception*, %struct.Exception*)* @Exception_Assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Exception_Assign(%struct.Exception* %0, %struct.Exception* %1) #0 {
  %3 = alloca %struct.Exception*, align 8
  %4 = alloca %struct.Exception*, align 8
  %5 = alloca %struct.Exception*, align 8
  %6 = alloca %struct.Exception*, align 8
  store %struct.Exception* %0, %struct.Exception** %3, align 8
  store %struct.Exception* %1, %struct.Exception** %4, align 8
  %7 = load %struct.Exception*, %struct.Exception** %3, align 8
  store %struct.Exception* %7, %struct.Exception** %5, align 8
  %8 = load %struct.Exception*, %struct.Exception** %4, align 8
  %9 = load i32, i32* @Exception, align 4
  %10 = call %struct.Exception* @cast(%struct.Exception* %8, i32 %9)
  store %struct.Exception* %10, %struct.Exception** %6, align 8
  %11 = load %struct.Exception*, %struct.Exception** %6, align 8
  %12 = getelementptr inbounds %struct.Exception, %struct.Exception* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.Exception*, %struct.Exception** %5, align 8
  %15 = getelementptr inbounds %struct.Exception, %struct.Exception* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.Exception*, %struct.Exception** %5, align 8
  %17 = getelementptr inbounds %struct.Exception, %struct.Exception* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.Exception*, %struct.Exception** %6, align 8
  %20 = getelementptr inbounds %struct.Exception, %struct.Exception* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assign(i32 %18, i32 %21)
  %23 = load %struct.Exception*, %struct.Exception** %6, align 8
  %24 = getelementptr inbounds %struct.Exception, %struct.Exception* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.Exception*, %struct.Exception** %5, align 8
  %27 = getelementptr inbounds %struct.Exception, %struct.Exception* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.Exception*, %struct.Exception** %6, align 8
  %29 = getelementptr inbounds %struct.Exception, %struct.Exception* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.Exception*, %struct.Exception** %5, align 8
  %32 = getelementptr inbounds %struct.Exception, %struct.Exception* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.Exception*, %struct.Exception** %5, align 8
  %34 = getelementptr inbounds %struct.Exception, %struct.Exception* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.Exception*, %struct.Exception** %6, align 8
  %37 = getelementptr inbounds %struct.Exception, %struct.Exception* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EXCEPTION_MAX_DEPTH, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32 %35, i32 %38, i32 %42)
  ret void
}

declare dso_local %struct.Exception* @cast(%struct.Exception*, i32) #1

declare dso_local i32 @assign(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
