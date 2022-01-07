; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ParseNtUsername.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ParseNtUsername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseNtUsername(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ClearStr(i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %6
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ClearStr(i8* %33, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %32
  store i32 1, i32* %17, align 4
  br label %117

45:                                               ; preds = %41
  %46 = trunc i64 %19 to i32
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @StrCpy(i8* %21, i32 %46, i8* %47)
  %49 = trunc i64 %23 to i32
  %50 = call i32 @ClearStr(i8* %24, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %45
  %54 = call %struct.TYPE_4__* @ParseTokenWithNullStr(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %16, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 1
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = trunc i64 %19 to i32
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @StrCpy(i8* %21, i32 %60, i8* %65)
  br label %67

67:                                               ; preds = %59, %53
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 2
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = trunc i64 %23 to i32
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @StrCpy(i8* %24, i32 %73, i8* %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %82 = call i32 @FreeToken(%struct.TYPE_4__* %81)
  br label %83

83:                                               ; preds = %80, %45
  %84 = call %struct.TYPE_4__* @ParseTokenWithNullStr(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %16, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 2
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = call i64 @IsEmptyStr(i8* %24)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = trunc i64 %23 to i32
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @StrCpy(i8* %24, i32 %93, i8* %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = trunc i64 %19 to i32
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @StrCpy(i8* %21, i32 %101, i8* %106)
  br label %108

108:                                              ; preds = %100, %83
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %110 = call i32 @FreeToken(%struct.TYPE_4__* %109)
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @StrCpy(i8* %111, i32 %112, i8* %21)
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @StrCpy(i8* %114, i32 %115, i8* %24)
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %108, %44
  %118 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %17, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ClearStr(i8*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local %struct.TYPE_4__* @ParseTokenWithNullStr(i8*, i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
