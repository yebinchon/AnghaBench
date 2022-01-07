; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcCallEx2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcCallEx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @WpcCallEx2(i8* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6, i32* %7, i8* %8, i32 %9, i32* %10, i32 %11, i8* %12, i8* %13, i8* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_14__, align 4
  %33 = alloca %struct.TYPE_15__*, align 8
  %34 = alloca %struct.TYPE_15__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_13__, align 8
  store i8* %0, i8** %17, align 8
  store i32* %1, i32** %18, align 8
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i8* %4, i8** %21, align 8
  store i32* %5, i32** %22, align 8
  store i32* %6, i32** %23, align 8
  store i32* %7, i32** %24, align 8
  store i8* %8, i8** %25, align 8
  store i32 %9, i32* %26, align 4
  store i32* %10, i32** %27, align 8
  store i32 %11, i32* %28, align 4
  store i8* %12, i8** %29, align 8
  store i8* %13, i8** %30, align 8
  store i8* %14, i8** %31, align 8
  %37 = load i8*, i8** %21, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %15
  %40 = load i32*, i32** %22, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %15
  %43 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  %44 = call i32* @PackError(i32 %43)
  store i32* %44, i32** %16, align 8
  br label %139

45:                                               ; preds = %39
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @ParseUrl(%struct.TYPE_14__* %32, i8* %46, i32 1, i32* null)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  %51 = call i32* @PackError(i32 %50)
  store i32* %51, i32** %16, align 8
  br label %139

52:                                               ; preds = %45
  %53 = load i32*, i32** %22, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = call i32 @PackAddStr(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %22, align 8
  %57 = load i32*, i32** %23, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = call %struct.TYPE_15__* @WpcGeneratePacket(i32* %56, i32* %57, i32* %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %33, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %61 = icmp eq %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  %64 = call i32* @PackError(i32 %63)
  store i32* %64, i32** %16, align 8
  br label %139

65:                                               ; preds = %52
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SeekBuf(%struct.TYPE_15__* %66, i32 %69, i32 0)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %72 = call i32 @WriteBufInt(%struct.TYPE_15__* %71, i32 0)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %74 = call i32 @SeekBuf(%struct.TYPE_15__* %73, i32 0, i32 0)
  %75 = load i8*, i8** %29, align 8
  %76 = call i32 @IsEmptyStr(i8* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %65
  %79 = load i8*, i8** %30, align 8
  %80 = call i32 @IsEmptyStr(i8* %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %29, align 8
  %86 = call i32 @StrCpy(i32 %84, i32 4, i8* %85)
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %30, align 8
  %90 = call i32 @StrCpy(i32 %88, i32 4, i8* %89)
  br label %91

91:                                               ; preds = %82, %78, %65
  %92 = load i8*, i8** %31, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i8*, i8** %31, align 8
  %96 = call i32 @IsEmptyStr(i8* %95)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %31, align 8
  %102 = call i32 @StrCpy(i32 %100, i32 4, i8* %101)
  br label %103

103:                                              ; preds = %98, %94, %91
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %25, align 8
  %111 = load i32, i32* %26, align 4
  %112 = load i32*, i32** %27, align 8
  %113 = load i32, i32* %28, align 4
  %114 = call %struct.TYPE_15__* @HttpRequestEx3(%struct.TYPE_14__* %32, i32* %104, i32 %105, i32 %106, i32* %35, i32 0, i32 %109, i32* null, i32* null, i8* %110, i32 %111, i32* %112, i32 %113, i32* null, i32* null)
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %34, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %116 = call i32 @FreeBuf(%struct.TYPE_15__* %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %118 = icmp eq %struct.TYPE_15__* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load i32, i32* %35, align 4
  %121 = call i32* @PackError(i32 %120)
  store i32* %121, i32** %16, align 8
  br label %139

122:                                              ; preds = %103
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %124 = call i32 @WpcParsePacket(%struct.TYPE_13__* %36, %struct.TYPE_15__* %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %128 = call i32 @FreeBuf(%struct.TYPE_15__* %127)
  %129 = load i32, i32* @ERR_PROTOCOL_ERROR, align 4
  %130 = call i32* @PackError(i32 %129)
  store i32* %130, i32** %16, align 8
  br label %139

131:                                              ; preds = %122
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %133 = call i32 @FreeBuf(%struct.TYPE_15__* %132)
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @FreeX(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %16, align 8
  br label %139

139:                                              ; preds = %131, %126, %119, %62, %49, %42
  %140 = load i32*, i32** %16, align 8
  ret i32* %140
}

declare dso_local i32* @PackError(i32) #1

declare dso_local i32 @ParseUrl(%struct.TYPE_14__*, i8*, i32, i32*) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @WpcGeneratePacket(i32*, i32*, i32*) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @HttpRequestEx3(%struct.TYPE_14__*, i32*, i32, i32, i32*, i32, i32, i32*, i32*, i8*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_15__*) #1

declare dso_local i32 @WpcParsePacket(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
