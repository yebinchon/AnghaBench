; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_codeAttach.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_codeAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@OP_Function = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_Expire = common dso_local global i32 0, align 4
@SQLITE_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*)* @codeAttach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeAttach(%struct.TYPE_25__* %0, i32 %1, %struct.TYPE_27__* %2, %struct.TYPE_28__* %3, %struct.TYPE_28__* %4, %struct.TYPE_28__* %5, %struct.TYPE_28__* %6) #0 {
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %5, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %6, %struct.TYPE_28__** %14, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %18, align 8
  %24 = call i32 @memset(%struct.TYPE_26__* %16, i32 0, i32 8)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %26, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %29 = call i32 @resolveAttachExpr(%struct.TYPE_26__* %16, %struct.TYPE_28__* %28)
  store i32 %29, i32* %15, align 4
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %34 = call i32 @resolveAttachExpr(%struct.TYPE_26__* %16, %struct.TYPE_28__* %33)
  store i32 %34, i32* %15, align 4
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %39 = call i32 @resolveAttachExpr(%struct.TYPE_26__* %16, %struct.TYPE_28__* %38)
  store i32 %39, i32* %15, align 4
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %31, %7
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %150

46:                                               ; preds = %36
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %48 = icmp ne %struct.TYPE_28__* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TK_STRING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %20, align 8
  br label %61

60:                                               ; preds = %49
  store i8* null, i8** %20, align 8
  br label %61

61:                                               ; preds = %60, %55
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %20, align 8
  %65 = call i32 @sqlite3AuthCheck(%struct.TYPE_25__* %62, i32 %63, i8* %64, i32 0, i32 0)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %150

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %73 = call i32* @sqlite3GetVdbe(%struct.TYPE_25__* %72)
  store i32* %73, i32** %17, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %75 = call i32 @sqlite3GetTempRange(%struct.TYPE_25__* %74, i32 4)
  store i32 %75, i32* %19, align 4
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @sqlite3ExprCode(%struct.TYPE_25__* %76, %struct.TYPE_28__* %77, i32 %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @sqlite3ExprCode(%struct.TYPE_25__* %80, %struct.TYPE_28__* %81, i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 2
  %89 = call i32 @sqlite3ExprCode(%struct.TYPE_25__* %85, %struct.TYPE_28__* %86, i32 %88)
  %90 = load i32*, i32** %17, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %71
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %92, %71
  %98 = phi i1 [ true, %71 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32*, i32** %17, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %149

103:                                              ; preds = %97
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* @OP_Function, align 4
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 3
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 3
  %114 = call i32 @sqlite3VdbeAddOp3(i32* %104, i32 %105, i32 0, i32 %111, i32 %113)
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %128, label %119

119:                                              ; preds = %103
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 255
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br label %128

128:                                              ; preds = %119, %103
  %129 = phi i1 [ true, %103 ], [ %127, %119 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32*, i32** %17, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @sqlite3VdbeChangeP5(i32* %132, i32 %135)
  %137 = load i32*, i32** %17, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %139 = bitcast %struct.TYPE_27__* %138 to i8*
  %140 = load i32, i32* @P4_FUNCDEF, align 4
  %141 = call i32 @sqlite3VdbeChangeP4(i32* %137, i32 -1, i8* %139, i32 %140)
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* @OP_Expire, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @SQLITE_ATTACH, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @sqlite3VdbeAddOp1(i32* %142, i32 %143, i32 %147)
  br label %149

149:                                              ; preds = %128, %97
  br label %150

150:                                              ; preds = %149, %69, %41
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %153 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %151, %struct.TYPE_28__* %152)
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %156 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %154, %struct.TYPE_28__* %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %159 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %157, %struct.TYPE_28__* %158)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @resolveAttachExpr(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3AuthCheck(%struct.TYPE_25__*, i32, i8*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_25__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_24__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
