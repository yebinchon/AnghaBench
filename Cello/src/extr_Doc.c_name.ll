; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Doc.c_name.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Doc.c_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Doc = type { i8* (...)* }

@Doc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Doc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @Doc, align 4
  %7 = call %struct.Doc* @type_instance(i32 %5, i32 %6)
  store %struct.Doc* %7, %struct.Doc** %4, align 8
  %8 = load %struct.Doc*, %struct.Doc** %4, align 8
  %9 = getelementptr inbounds %struct.Doc, %struct.Doc* %8, i32 0, i32 0
  %10 = load i8* (...)*, i8* (...)** %9, align 8
  %11 = icmp ne i8* (...)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.Doc*, %struct.Doc** %4, align 8
  %14 = getelementptr inbounds %struct.Doc, %struct.Doc* %13, i32 0, i32 0
  %15 = load i8* (...)*, i8* (...)** %14, align 8
  %16 = call i8* (...) %15()
  store i8* %16, i8** %2, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @c_str(i32 %18)
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local %struct.Doc* @type_instance(i32, i32) #1

declare dso_local i8* @c_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
