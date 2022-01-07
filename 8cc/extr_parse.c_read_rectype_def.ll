; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_rectype_def.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_rectype_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32* }

@tags = common dso_local global i32 0, align 4
@KIND_ENUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"declarations of %s does not match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32)* @read_rectype_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @read_rectype_def(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i8* (...) @read_rectype_tag()
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load i32, i32* @tags, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.TYPE_6__* @map_get(i32 %12, i8* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KIND_ENUM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %23, %11
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = call %struct.TYPE_6__* @make_rectype(i32 %36)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %4, align 8
  %38 = load i32, i32* @tags, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = call i32 @map_put(i32 %38, i8* %39, %struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %35, %32
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* %2, align 4
  %45 = call %struct.TYPE_6__* @make_rectype(i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %4, align 8
  br label %46

46:                                               ; preds = %43, %42
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32* @read_rectype_fields(i32* %5, i32* %6, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %46
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %62
}

declare dso_local i8* @read_rectype_tag(...) #1

declare dso_local %struct.TYPE_6__* @map_get(i32, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @make_rectype(i32) #1

declare dso_local i32 @map_put(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32* @read_rectype_fields(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
