; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_checkList.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_checkList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"%d of %d pages missing from overflow list starting at %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get page %d\00", align 1
@PTRMAP_FREEPAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"freelist leaf count too big on page %d\00", align 1
@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"free-page count in header is too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32)* @checkList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkList(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %165, %4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %166

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  br label %166

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @checkRef(%struct.TYPE_8__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %166

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @sqlite3PagerGet(i32 %48, i32 %49, i32** %12, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %166

56:                                               ; preds = %45
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @sqlite3PagerGetData(i32* %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %13, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %130

62:                                               ; preds = %56
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = call i32 @get4byte(i8* %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %76 = call i32 @checkPtrmap(%struct.TYPE_8__* %73, i32 %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %72, %62
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = sdiv i32 %84, 4
  %86 = sub nsw i32 %85, 2
  %87 = icmp sgt i32 %78, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %8, align 4
  br label %129

94:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %122, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %95
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 8, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = call i32 @get4byte(i8* %105)
  store i32 %106, i32* %15, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %117 = call i32 @checkPtrmap(%struct.TYPE_8__* %114, i32 %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %113, %99
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i64 @checkRef(%struct.TYPE_8__* %119, i32 %120)
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %95

125:                                              ; preds = %95
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %125, %88
  br label %149

130:                                              ; preds = %56
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @get4byte(i8* %141)
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @checkPtrmap(%struct.TYPE_8__* %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %140, %137, %130
  br label %149

149:                                              ; preds = %148, %129
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @get4byte(i8* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @sqlite3PagerUnref(i32* %152)
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %156, %149
  br label %18

166:                                              ; preds = %52, %44, %32, %27
  ret void
}

declare dso_local i32 @checkAppendMsg(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @checkRef(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @sqlite3PagerGet(i32, i32, i32**, i32) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i32 @get4byte(i8*) #1

declare dso_local i32 @checkPtrmap(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3PagerUnref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
