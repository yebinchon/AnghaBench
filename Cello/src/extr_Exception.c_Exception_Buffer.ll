; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Buffer.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Exception = type { i32, i32** }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cello Fatal Error: Exception Buffer Out of Bounds!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.Exception*)* @Exception_Buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Exception_Buffer(%struct.Exception* %0) #0 {
  %2 = alloca %struct.Exception*, align 8
  store %struct.Exception* %0, %struct.Exception** %2, align 8
  %3 = load %struct.Exception*, %struct.Exception** %2, align 8
  %4 = getelementptr inbounds %struct.Exception, %struct.Exception* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @abort() #3
  unreachable

11:                                               ; preds = %1
  %12 = load %struct.Exception*, %struct.Exception** %2, align 8
  %13 = getelementptr inbounds %struct.Exception, %struct.Exception* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load %struct.Exception*, %struct.Exception** %2, align 8
  %16 = getelementptr inbounds %struct.Exception, %struct.Exception* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %14, i64 %19
  %21 = load i32*, i32** %20, align 8
  ret i32* %21
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
