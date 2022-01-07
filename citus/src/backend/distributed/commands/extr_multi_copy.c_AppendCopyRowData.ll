; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_AppendCopyRowData.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_AppendCopyRowData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i8*, i64, i32 }
%struct.TYPE_16__ = type { i64, i64 }

@VARHDRSZ = common dso_local global i32 0, align 4
@ATTRIBUTE_GENERATED_STORED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AppendCopyRowData(i32* %0, i32* %1, %struct.TYPE_15__* %2, %struct.TYPE_17__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = call i64 @AvailableColumnCount(%struct.TYPE_15__* %30)
  store i64 %31, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @CopySendInt16(%struct.TYPE_17__* %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %6
  store i64 0, i64* %16, align 8
  br label %45

45:                                               ; preds = %151, %44
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %154

49:                                               ; preds = %45
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_15__* %50, i64 %51)
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %18, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %19, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %49
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %19, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @CoerceColumnValue(i32 %67, i32* %70)
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %66, %63, %49
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %151

78:                                               ; preds = %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %107, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %22, align 8
  %90 = load i32*, i32** %22, align 8
  %91 = load i32, i32* %19, align 4
  %92 = call i32* @SendFunctionCall(i32* %90, i32 %91)
  store i32* %92, i32** %23, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = load i32*, i32** %23, align 8
  %95 = call i32 @VARSIZE(i32* %94)
  %96 = load i32, i32* @VARHDRSZ, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @CopySendInt32(%struct.TYPE_17__* %93, i32 %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = load i32*, i32** %23, align 8
  %101 = call i32 @VARDATA(i32* %100)
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @VARSIZE(i32* %102)
  %104 = load i32, i32* @VARHDRSZ, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @CopySendData(%struct.TYPE_17__* %99, i32 %101, i32 %105)
  br label %110

107:                                              ; preds = %83
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = call i32 @CopySendInt32(%struct.TYPE_17__* %108, i32 -1)
  br label %110

110:                                              ; preds = %107, %86
  br label %147

111:                                              ; preds = %78
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %11, align 8
  %116 = load i64, i64* %16, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %24, align 8
  %118 = load i32*, i32** %24, align 8
  %119 = load i32, i32* %19, align 4
  %120 = call i8* @OutputFunctionCall(i32* %118, i32 %119)
  store i8* %120, i8** %25, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %122 = load i8*, i8** %25, align 8
  %123 = call i32 @CopyAttributeOutText(%struct.TYPE_17__* %121, i8* %122)
  br label %130

124:                                              ; preds = %111
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @CopySendString(%struct.TYPE_17__* %125, i8* %128)
  br label %130

130:                                              ; preds = %124, %114
  %131 = load i64, i64* %15, align 8
  %132 = add i64 %131, 1
  %133 = load i64, i64* %14, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %21, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @CopySendChar(%struct.TYPE_17__* %139, i8 signext %144)
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146, %110
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %15, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %15, align 8
  br label %151

151:                                              ; preds = %148, %77
  %152 = load i64, i64* %16, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %16, align 8
  br label %45

154:                                              ; preds = %45
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = call i32 @CopySendChar(%struct.TYPE_17__* %160, i8 signext 10)
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @MemoryContextSwitchTo(i32 %163)
  ret void
}

declare dso_local i64 @AvailableColumnCount(%struct.TYPE_15__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @CopySendInt16(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @CoerceColumnValue(i32, i32*) #1

declare dso_local i32* @SendFunctionCall(i32*, i32) #1

declare dso_local i32 @CopySendInt32(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32 @CopySendData(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i32 @CopyAttributeOutText(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @CopySendString(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @CopySendChar(%struct.TYPE_17__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
