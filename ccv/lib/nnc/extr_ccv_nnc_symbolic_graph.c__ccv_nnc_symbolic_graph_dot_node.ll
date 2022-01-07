; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_node.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64*, i32, i64* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"node%d [shape=record,label=\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"|{Input\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"|-\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"|{Output\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\22];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32*, i32, i32*)* @_ccv_nnc_symbolic_graph_dot_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_dot_node(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @_ccv_nnc_symbolic_graph_dot_exec_symbol(i32 %19, %struct.TYPE_8__* %20, i32 %21, i32* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %5
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %90, %28
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %37
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @fputc(i8 signext 124, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @ccv_array_get(i32* %49, i64 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %12, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %46
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i64 @ccv_array_get(i32* %64, i64 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_7__*
  br label %72

71:                                               ; preds = %46
  br label %72

72:                                               ; preds = %71, %63
  %73 = phi %struct.TYPE_7__* [ %70, %63 ], [ null, %71 ]
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %13, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i64 %80, %struct.TYPE_7__* %81, %struct.TYPE_7__* %82, i32 0, i32 %83, i32* %84)
  br label %89

86:                                               ; preds = %37
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %87)
  br label %89

89:                                               ; preds = %86, %72
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %31

93:                                               ; preds = %31
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @fputc(i8 signext 125, i32* %94)
  br label %96

96:                                               ; preds = %93, %5
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %169

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %102)
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %163, %101
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %166

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %159

119:                                              ; preds = %110
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @fputc(i8 signext 124, i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @ccv_array_get(i32* %122, i64 %129)
  %131 = inttoptr i64 %130 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %14, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %119
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, 1
  %142 = call i64 @ccv_array_get(i32* %137, i64 %141)
  %143 = inttoptr i64 %142 to %struct.TYPE_7__*
  br label %145

144:                                              ; preds = %119
  br label %145

145:                                              ; preds = %144, %136
  %146 = phi %struct.TYPE_7__* [ %143, %136 ], [ null, %144 ]
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %15, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i64 %153, %struct.TYPE_7__* %154, %struct.TYPE_7__* %155, i32 0, i32 %156, i32* %157)
  br label %162

159:                                              ; preds = %110
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %160)
  br label %162

162:                                              ; preds = %159, %145
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %104

166:                                              ; preds = %104
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @fputc(i8 signext 125, i32* %167)
  br label %169

169:                                              ; preds = %166, %96
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %170)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_exec_symbol(i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @ccv_array_get(i32*, i64) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
