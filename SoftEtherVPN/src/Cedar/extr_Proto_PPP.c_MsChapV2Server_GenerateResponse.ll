; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_MsChapV2Server_GenerateResponse.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_MsChapV2Server_GenerateResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Magic server to client signing constant\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Pad to make it do more than one iteration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MsChapV2Server_GenerateResponse(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* @SHA1_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %4
  store i32 1, i32* %14, align 4
  br label %75

31:                                               ; preds = %27
  %32 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %11, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @WriteBuf(%struct.TYPE_5__* %33, i8* %34, i32 16)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @WriteBuf(%struct.TYPE_5__* %36, i8* %37, i32 24)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @StrLen(i8* %41)
  %43 = call i32 @WriteBuf(%struct.TYPE_5__* %39, i8* %40, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Sha1(i8* %18, i32 %46, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = call i32 @FreeBuf(%struct.TYPE_5__* %51)
  %53 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %11, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = trunc i64 %16 to i32
  %56 = call i32 @WriteBuf(%struct.TYPE_5__* %54, i8* %18, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @WriteBuf(%struct.TYPE_5__* %57, i8* %58, i32 8)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @StrLen(i8* %62)
  %64 = call i32 @WriteBuf(%struct.TYPE_5__* %60, i8* %61, i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @Sha1(i8* %65, i32 %68, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = call i32 @FreeBuf(%struct.TYPE_5__* %73)
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %31, %30
  %76 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %79 [
    i32 0, label %78
    i32 1, label %78
  ]

78:                                               ; preds = %75, %75
  ret void

79:                                               ; preds = %75
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @Sha1(i8*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
