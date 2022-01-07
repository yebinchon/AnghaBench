; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_exception_throw.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_exception_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Exception = type { i32, i32* }

@Exception = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @exception_throw(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Exception*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @Exception, align 4
  %9 = call %struct.Exception* @current(i32 %8)
  store %struct.Exception* %9, %struct.Exception** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.Exception*, %struct.Exception** %7, align 8
  %12 = getelementptr inbounds %struct.Exception, %struct.Exception* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.Exception*, %struct.Exception** %7, align 8
  %14 = getelementptr inbounds %struct.Exception, %struct.Exception* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @print_to_with(i32 %15, i32 0, i8* %16, i32* %17)
  %19 = load %struct.Exception*, %struct.Exception** %7, align 8
  %20 = call i32 @Exception_Len(%struct.Exception* %19)
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.Exception*, %struct.Exception** %7, align 8
  %24 = call i32* @Exception_Buffer(%struct.Exception* %23)
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @longjmp(i32 %25, i32 1)
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.Exception*, %struct.Exception** %7, align 8
  %29 = call i32 @Exception_Error(%struct.Exception* %28)
  br label %30

30:                                               ; preds = %27, %22
  ret i32* null
}

declare dso_local %struct.Exception* @current(i32) #1

declare dso_local i32 @print_to_with(i32, i32, i8*, i32*) #1

declare dso_local i32 @Exception_Len(%struct.Exception*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32* @Exception_Buffer(%struct.Exception*) #1

declare dso_local i32 @Exception_Error(%struct.Exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
