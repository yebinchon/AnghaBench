; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_body.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@TK_END = common dso_local global i32 0, align 4
@TK_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*, i32, i32)* @body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @body(%struct.TYPE_17__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = call i32 @open_func(%struct.TYPE_17__* %10, %struct.TYPE_18__* %9)
  %12 = load i32, i32* %8, align 4
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = call i32 @checknext(%struct.TYPE_17__* %16, i8 signext 40)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = call i32 @new_localvarliteral(%struct.TYPE_17__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = call i32 @adjustlocalvars(%struct.TYPE_17__* %23, i32 1)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i32 @parlist(%struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @checknext(%struct.TYPE_17__* %28, i8 signext 41)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i32 @chunk(%struct.TYPE_17__* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = load i32, i32* @TK_END, align 4
  %40 = load i32, i32* @TK_FUNCTION, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @check_match(%struct.TYPE_17__* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = call i32 @close_func(%struct.TYPE_17__* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @pushclosure(%struct.TYPE_17__* %45, %struct.TYPE_18__* %9, i32* %46)
  ret void
}

declare dso_local i32 @open_func(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @checknext(%struct.TYPE_17__*, i8 signext) #1

declare dso_local i32 @new_localvarliteral(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @adjustlocalvars(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @parlist(%struct.TYPE_17__*) #1

declare dso_local i32 @chunk(%struct.TYPE_17__*) #1

declare dso_local i32 @check_match(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @close_func(%struct.TYPE_17__*) #1

declare dso_local i32 @pushclosure(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
