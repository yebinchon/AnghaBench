; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_TokenInfoToSecInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_TokenInfoToSecInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%u.%02u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @TokenInfoToSecInfo(i8* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

18:                                               ; preds = %1
  %19 = call i8* @ZeroMalloc(i32 80)
  %20 = bitcast i8* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %4, align 8
  %21 = trunc i64 %10 to i32
  %22 = call i32 @Zero(i8* %12, i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Copy(i8* %12, i32 %25, i32 4)
  %27 = call i32 @CalcUtf8ToUni(i8* %12, i32 0)
  %28 = call i8* @ZeroMalloc(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 13
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 13
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @Utf8ToUni(i8* %33, i32 0, i8* %12, i32 0)
  %35 = trunc i64 %10 to i32
  %36 = call i32 @Zero(i8* %12, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Copy(i8* %12, i32 %39, i32 4)
  %41 = call i32 @CalcUtf8ToUni(i8* %12, i32 0)
  %42 = call i8* @ZeroMalloc(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 12
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 12
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @Utf8ToUni(i8* %47, i32 0, i8* %12, i32 0)
  %49 = trunc i64 %10 to i32
  %50 = call i32 @Zero(i8* %12, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Copy(i8* %12, i32 %53, i32 4)
  %55 = call i32 @CalcUtf8ToUni(i8* %12, i32 0)
  %56 = call i8* @ZeroMalloc(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 11
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 11
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @Utf8ToUni(i8* %61, i32 0, i8* %12, i32 0)
  %63 = trunc i64 %10 to i32
  %64 = call i32 @Zero(i8* %12, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @Copy(i8* %12, i32 %67, i32 4)
  %69 = call i32 @CalcUtf8ToUni(i8* %12, i32 0)
  %70 = call i8* @ZeroMalloc(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 10
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 10
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @Utf8ToUni(i8* %75, i32 0, i8* %12, i32 0)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = trunc i64 %10 to i32
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @Format(i8* %12, i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %125)
  %127 = call i8* @CopyStr(i8* %12)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = trunc i64 %10 to i32
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @Format(i8* %12, i32 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %138)
  %140 = call i8* @CopyStr(i8* %12)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %143, %struct.TYPE_8__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %18, %17
  %145 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ZeroMalloc(i32) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @Copy(i8*, i32, i32) #2

declare dso_local i32 @CalcUtf8ToUni(i8*, i32) #2

declare dso_local i32 @Utf8ToUni(i8*, i32, i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @CopyStr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
