; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_generic.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"no matching generic selection for %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @read_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @read_generic() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = call i32 @expect(i8 signext 40)
  %11 = call i32* (...) @peek()
  store i32* %11, i32** %2, align 8
  %12 = call %struct.TYPE_6__* (...) @read_assignment_expr()
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = call i32 @expect(i8 signext 44)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %14 = call i32* @read_generic_list(%struct.TYPE_6__** %4)
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %41, %0
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @vec_len(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8** @vec_get(i32* %21, i32 %22)
  store i8** %23, i8*** %7, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %8, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @type_compatible(i32 %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %1, align 8
  br label %58

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %2, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = call i32 @node2s(%struct.TYPE_6__* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ty2s(i32 %53)
  %55 = call i32 @errort(i32* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %47, %44
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %1, align 8
  br label %58

58:                                               ; preds = %56, %38
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %59
}

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @peek(...) #1

declare dso_local %struct.TYPE_6__* @read_assignment_expr(...) #1

declare dso_local i32* @read_generic_list(%struct.TYPE_6__**) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i8** @vec_get(i32*, i32) #1

declare dso_local i64 @type_compatible(i32, i32*) #1

declare dso_local i32 @errort(i32*, i8*, i32, i32) #1

declare dso_local i32 @node2s(%struct.TYPE_6__*) #1

declare dso_local i32 @ty2s(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
