; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebProcPost.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebProcPost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"/admin\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"|wwwroot/admin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdminWebProcPost(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = icmp eq %struct.TYPE_22__* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = icmp eq %struct.TYPE_21__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %27, %5
  store i32 1, i32* %17, align 4
  br label %113

37:                                               ; preds = %33
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.TYPE_20__* @JsonRpcAuthLogin(i32 %40, %struct.TYPE_21__* %41, i32* %42)
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %11, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = icmp eq %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @RecvAllWithDiscard(%struct.TYPE_21__* %47, i64 %48, i32 %51)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @AdminWebSendUnauthorized(%struct.TYPE_21__* %53, i32* %54)
  store i32 1, i32* %17, align 4
  br label %113

56:                                               ; preds = %37
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %64 = call i32 @Disconnect(%struct.TYPE_21__* %63)
  store i32 1, i32* %17, align 4
  br label %113

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 1
  %68 = call %struct.TYPE_20__* @ZeroMalloc(i64 %67)
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %12, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @RecvAll(%struct.TYPE_21__* %69, %struct.TYPE_20__* %70, i64 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %65
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = call i32 @RemoveDosEntry(i32 %82, %struct.TYPE_21__* %83)
  %85 = trunc i64 %19 to i32
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @StrCpy(i8* %21, i32 %85, i8* %86)
  %88 = trunc i64 %23 to i32
  %89 = call i32 @Zero(i8* %24, i32 %88)
  %90 = call i64 @SearchStr(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* @INFINITE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %77
  %95 = trunc i64 %23 to i32
  %96 = load i64, i64* %16, align 8
  %97 = getelementptr inbounds i8, i8* %21, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 @StrCpy(i8* %24, i32 %95, i8* %98)
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds i8, i8* %21, i64 %100
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %94, %77
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @AdminWebHandleFileRequest(%struct.TYPE_20__* %103, %struct.TYPE_22__* %104, %struct.TYPE_21__* %105, i32* %106, i8* %21, i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %65
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %110 = call i32 @Free(%struct.TYPE_20__* %109)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %112 = call i32 @Free(%struct.TYPE_20__* %111)
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %108, %62, %46, %36
  %114 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %17, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_20__* @JsonRpcAuthLogin(i32, %struct.TYPE_21__*, i32*) #2

declare dso_local i32 @RecvAllWithDiscard(%struct.TYPE_21__*, i64, i32) #2

declare dso_local i32 @AdminWebSendUnauthorized(%struct.TYPE_21__*, i32*) #2

declare dso_local i32 @Disconnect(%struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i64) #2

declare dso_local i64 @RecvAll(%struct.TYPE_21__*, %struct.TYPE_20__*, i64, i32) #2

declare dso_local i32 @RemoveDosEntry(i32, %struct.TYPE_21__*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i64 @SearchStr(i8*, i8*, i32) #2

declare dso_local i32 @AdminWebHandleFileRequest(%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @Free(%struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
