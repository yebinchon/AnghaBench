; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeStrToVendorId.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeStrToVendorId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@MD5_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @IkeStrToVendorId(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @IsEmptyStr(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %46

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @StartWith(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = call %struct.TYPE_6__* @StrToBin(i8* %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i32 @FreeBuf(%struct.TYPE_6__* %28)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %46

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %2, align 8
  br label %46

32:                                               ; preds = %12
  %33 = load i32, i32* @MD5_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %6, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %7, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @StrLen(i8* %38)
  %40 = call i32 @Md5(i32* %36, i8* %37, i32 %39)
  %41 = mul nuw i64 4, %34
  %42 = trunc i64 %41 to i32
  %43 = call %struct.TYPE_6__* @MemToBuf(i32* %36, i32 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %2, align 8
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  br label %46

46:                                               ; preds = %32, %30, %27, %11
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %47
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @StrToBin(i8*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Md5(i32*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local %struct.TYPE_6__* @MemToBuf(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
