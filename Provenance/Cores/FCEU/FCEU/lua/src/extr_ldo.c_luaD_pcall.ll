; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldo.c_luaD_pcall.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldo.c_luaD_pcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i16, i8*, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaD_pcall(%struct.TYPE_12__* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 8
  store i16 %19, i16* %12, align 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = call i8* @saveci(%struct.TYPE_12__* %20, %struct.TYPE_13__* %23)
  store i8* %24, i8** %13, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @luaD_rawrunprotected(%struct.TYPE_12__* %34, i32 %35, i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %5
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @restorestack(%struct.TYPE_12__* %41, i8* %42)
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @luaF_close(%struct.TYPE_12__* %44, i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @luaD_seterrorobj(%struct.TYPE_12__* %47, i32 %48, i32 %49)
  %51 = load i16, i16* %12, align 2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i16 %51, i16* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call %struct.TYPE_13__* @restoreci(%struct.TYPE_12__* %54, i8* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = call i32 @restore_stack_limit(%struct.TYPE_12__* %76)
  br label %78

78:                                               ; preds = %40, %5
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i8* @saveci(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @luaD_rawrunprotected(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @restorestack(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @luaF_close(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @luaD_seterrorobj(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @restoreci(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @restore_stack_limit(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
