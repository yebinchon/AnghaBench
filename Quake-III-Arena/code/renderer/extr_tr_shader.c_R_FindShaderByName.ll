; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_R_FindShaderByName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_R_FindShaderByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@MAX_QPATH = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FILE_HASH_SIZE = common dso_local global i32 0, align 4
@hashTable = common dso_local global %struct.TYPE_5__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @R_FindShaderByName(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @COM_StripExtension(i8* %24, i8* %12)
  %26 = load i32, i32* @FILE_HASH_SIZE, align 4
  %27 = call i32 @generateHashValue(i8* %12, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @hashTable, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %7, align 8
  br label %33

33:                                               ; preds = %45, %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @Q_stricmp(i32 %39, i8* %12)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %51

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %7, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %42, %21
  %52 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COM_StripExtension(i8*, i8*) #2

declare dso_local i32 @generateHashValue(i8*, i32) #2

declare dso_local i64 @Q_stricmp(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
