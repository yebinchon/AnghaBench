; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsParseKeyMethod2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsParseKeyMethod2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OvsParseKeyMethod2(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = call i32 @Zero(%struct.TYPE_12__* %14, i32 56)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store i32 0, i32* %5, align 4
  br label %118

25:                                               ; preds = %21
  %26 = call %struct.TYPE_13__* (...) @NewBuf()
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @WriteBuf(%struct.TYPE_13__* %27, i32* %28, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = call i32 @SeekBuf(%struct.TYPE_13__* %31, i32 0, i32 0)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = call i32 @ReadBuf(%struct.TYPE_13__* %33, i32* %12, i32 4)
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %114

37:                                               ; preds = %25
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = call i32 @ReadBuf(%struct.TYPE_13__* %38, i32* %13, i32 4)
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %113

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %113

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ReadBuf(%struct.TYPE_13__* %49, i32* %52, i32 8)
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 8
  br i1 %55, label %56, label %112

56:                                               ; preds = %48, %45
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ReadBuf(%struct.TYPE_13__* %57, i32* %60, i32 8)
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 8
  br i1 %63, label %64, label %111

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ReadBuf(%struct.TYPE_13__* %65, i32* %68, i32 8)
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %110

72:                                               ; preds = %64
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = call i64 @OvsReadStringFromBuf(%struct.TYPE_13__* %73, %struct.TYPE_12__* %76, i32 8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = call i64 @OvsReadStringFromBuf(%struct.TYPE_13__* %80, %struct.TYPE_12__* %83, i32 8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i64 @OvsReadStringFromBuf(%struct.TYPE_13__* %87, %struct.TYPE_12__* %90, i32 8)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = call i64 @OvsReadStringFromBuf(%struct.TYPE_13__* %94, %struct.TYPE_12__* %97, i32 8)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i32 @Zero(%struct.TYPE_12__* %103, i32 8)
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %86, %79, %72
  br label %110

110:                                              ; preds = %109, %64
  br label %111

111:                                              ; preds = %110, %56
  br label %112

112:                                              ; preds = %111, %48
  br label %113

113:                                              ; preds = %112, %42, %37
  br label %114

114:                                              ; preds = %113, %25
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = call i32 @FreeBuf(%struct.TYPE_13__* %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %24
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_13__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ReadBuf(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @OvsReadStringFromBuf(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
