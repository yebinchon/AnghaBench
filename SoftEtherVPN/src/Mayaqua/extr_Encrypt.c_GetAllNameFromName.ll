; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_GetAllNameFromName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_GetAllNameFromName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 37, i32 115, i32 67, i32 78, i32 61, i32 37, i32 115, i32 44, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 79, i32 61, i32 37, i32 115, i32 44, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [10 x i32] [i32 37, i32 115, i32 79, i32 85, i32 61, i32 37, i32 115, i32 44, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 83, i32 61, i32 37, i32 115, i32 44, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 76, i32 61, i32 37, i32 115, i32 44, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 67, i32 61, i32 37, i32 115, i32 44, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetAllNameFromName(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @UniStrCpy(i32* %8, i32 %9, i8* bitcast ([1 x i32]* @.str to i8*))
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  br label %124

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @UniFormat(i32* %23, i32 %24, i8* bitcast ([10 x i32]* @.str.1 to i8*), i32* %25, i32* %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @UniFormat(i32* %36, i32 %37, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32* %38, i32* %41)
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @UniFormat(i32* %49, i32 %50, i8* bitcast ([10 x i32]* @.str.3 to i8*), i32* %51, i32* %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @UniFormat(i32* %62, i32 %63, i8* bitcast ([9 x i32]* @.str.4 to i8*), i32* %64, i32* %67)
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @UniFormat(i32* %75, i32 %76, i8* bitcast ([9 x i32]* @.str.5 to i8*), i32* %77, i32* %80)
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @UniFormat(i32* %88, i32 %89, i8* bitcast ([9 x i32]* @.str.6 to i8*), i32* %90, i32* %93)
  br label %95

95:                                               ; preds = %87, %82
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @UniStrLen(i32* %96)
  %98 = icmp sge i32 %97, 3
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @UniStrLen(i32* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 44
  br i1 %108, label %109, label %123

109:                                              ; preds = %99
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 32
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %109, %99
  br label %124

124:                                              ; preds = %16, %123, %95
  ret void
}

declare dso_local i32 @UniStrCpy(i32*, i32, i8*) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @UniStrLen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
