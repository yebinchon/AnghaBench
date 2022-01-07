; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeHMac.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeHMac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.5 = private unnamed_addr constant [123 x i8] c"IkeHMac(): The MD object is NULL! Either NewMd() failed or the current algorithm is not handled by the switch-case block.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"IkeHMac(): SetMdKey() failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"IkeHMac(): MdProcess() returned 0!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeHMac(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %27 [
    i32 132, label %17
    i32 131, label %19
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

17:                                               ; preds = %6
  %18 = call i32* @NewMd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %13, align 8
  br label %27

19:                                               ; preds = %6
  %20 = call i32* @NewMd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %13, align 8
  br label %27

21:                                               ; preds = %6
  %22 = call i32* @NewMd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** %13, align 8
  br label %27

23:                                               ; preds = %6
  %24 = call i32* @NewMd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %24, i32** %13, align 8
  br label %27

25:                                               ; preds = %6
  %26 = call i32* @NewMd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %26, i32** %13, align 8
  br label %27

27:                                               ; preds = %6, %25, %23, %21, %19, %17
  %28 = load i32*, i32** %13, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @Debug(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0))
  br label %53

32:                                               ; preds = %27
  %33 = load i32*, i32** %13, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @SetMdKey(i32* %33, i8* %34, i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %50

40:                                               ; preds = %32
  %41 = load i32*, i32** %13, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @MdProcess(i32* %41, i8* %42, i8* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @FreeMd(i32* %51)
  br label %53

53:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32* @NewMd(i8*) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i32 @SetMdKey(i32*, i8*, i32) #1

declare dso_local i64 @MdProcess(i32*, i8*, i8*, i32) #1

declare dso_local i32 @FreeMd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
