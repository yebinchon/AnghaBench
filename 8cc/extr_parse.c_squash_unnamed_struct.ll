; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_squash_unnamed_struct.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_squash_unnamed_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @squash_unnamed_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @squash_unnamed_struct(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @dict_keys(i32 %13)
  store i32* %14, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %39, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @vec_len(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @vec_get(i32* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @dict_get(i32 %26, i8* %27)
  %29 = call %struct.TYPE_5__* @copy_type(i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = call i32 @dict_put(i32* %35, i8* %36, %struct.TYPE_5__* %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %15

42:                                               ; preds = %15
  ret void
}

declare dso_local i32* @dict_keys(i32) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i8* @vec_get(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @copy_type(i32) #1

declare dso_local i32 @dict_get(i32, i8*) #1

declare dso_local i32 @dict_put(i32*, i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
