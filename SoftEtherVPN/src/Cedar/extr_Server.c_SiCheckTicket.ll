; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCheckTicket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCheckTicket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiCheckTicket(%struct.TYPE_8__* %0, i32* %1, i8* %2, i64 %3, i8* %4, i64 %5, i32* %6, i8* %7, i64 %8, i8* %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i32* %6, i32** %19, align 8
  store i8* %7, i8** %20, align 8
  store i64 %8, i64* %21, align 8
  store i8* %9, i8** %22, align 8
  store i64 %10, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %11
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %15, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %17, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %19, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %20, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32, %29, %11
  store i32 0, i32* %12, align 4
  br label %116

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @LockList(i32 %48)
  store i64 0, i64* %25, align 8
  br label %50

50:                                               ; preds = %107, %45
  %51 = load i64, i64* %25, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @LIST_NUM(i32 %54)
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %25, align 8
  %62 = call %struct.TYPE_7__* @LIST_DATA(i32 %60, i64 %61)
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %26, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* @SHA1_SIZE, align 4
  %68 = call i64 @Cmp(i32 %65, i32* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %57
  store i32 1, i32* %24, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @StrCpy(i8* %71, i64 %72, i32 %75)
  %77 = load i8*, i8** %17, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @StrCpy(i8* %77, i64 %78, i32 %81)
  %83 = load i8*, i8** %20, align 8
  %84 = load i64, i64* %21, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @StrCpy(i8* %83, i64 %84, i32 %87)
  %89 = load i8*, i8** %22, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @StrCpy(i8* %89, i64 %90, i32 %93)
  %95 = load i32*, i32** %19, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @Copy(i32* %95, i32* %97, i32 4)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %103 = call i32 @Delete(i32 %101, %struct.TYPE_7__* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %105 = call i32 @Free(%struct.TYPE_7__* %104)
  br label %110

106:                                              ; preds = %57
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %25, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %25, align 8
  br label %50

110:                                              ; preds = %70, %50
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @UnlockList(i32 %113)
  %115 = load i32, i32* %24, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %110, %44
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_7__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @Cmp(i32, i32*, i32) #1

declare dso_local i32 @StrCpy(i8*, i64, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Free(%struct.TYPE_7__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
