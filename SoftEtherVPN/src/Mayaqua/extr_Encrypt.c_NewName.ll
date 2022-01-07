; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewName(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = call %struct.TYPE_4__* @ZeroMalloc(i32 48)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %13, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @UniIsEmptyStr(i32* %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @CopyUniStr(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %18, %6
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @UniIsEmptyStr(i32* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @CopyUniStr(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @UniIsEmptyStr(i32* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @CopyUniStr(i32* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @UniIsEmptyStr(i32* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %10, align 8
  %47 = call i8* @CopyUniStr(i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @UniIsEmptyStr(i32* %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  %56 = call i8* @CopyUniStr(i32* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @UniIsEmptyStr(i32* %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %12, align 8
  %65 = call i8* @CopyUniStr(i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  ret %struct.TYPE_4__* %69
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i8* @CopyUniStr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
