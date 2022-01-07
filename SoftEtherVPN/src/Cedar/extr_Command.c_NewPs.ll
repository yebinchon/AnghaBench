; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_NewPs.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_NewPs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i64, i8*, i32*, i32*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewPs(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %7
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %73

26:                                               ; preds = %22
  %27 = load i8*, i8** %13, align 8
  %28 = call i64 @IsEmptyStr(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %13, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i8*, i8** %14, align 8
  %33 = call i64 @IsEmptyStr(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* null, i8** %14, align 8
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32*, i32** %15, align 8
  %38 = call i64 @UniIsEmptyStr(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32* null, i32** %15, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = call %struct.TYPE_4__* @ZeroMalloc(i32 64)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %16, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i8* @CopyStr(i8* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  store i32* %55, i32** %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i8* @CopyStr(i8* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i8* @CopyStr(i8* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @CopyUniStr(i32* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %8, align 8
  br label %73

73:                                               ; preds = %41, %25
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  ret %struct.TYPE_4__* %74
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @UniIsEmptyStr(i32*) #1

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i32 @CopyUniStr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
