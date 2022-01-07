; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_sync_stream.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_sync_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@STREAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" SYNC \00", align 1
@stderr = common dso_local global i32 0, align 4
@png_IEND = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@READ_ERROR_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"damaged PNG stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @sync_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_stream(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %13 = load i32, i32* @STREAM_ERROR, align 4
  %14 = load %struct.file*, %struct.file** %2, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.file*, %struct.file** %2, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @type_name(i32 %29, i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @putc(i8 signext 10, i32 %32)
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.file*, %struct.file** %2, align 8
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 3
  %38 = call i32 @file_setpos(%struct.file* %35, i32* %37)
  %39 = load %struct.file*, %struct.file** %2, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  store i32 8, i32* %40, align 4
  %41 = load %struct.file*, %struct.file** %2, align 8
  %42 = call i32 @read_4(%struct.file* %41, i32* %3)
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %156

44:                                               ; preds = %34
  %45 = load %struct.file*, %struct.file** %2, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @crc_init_4(i32 %48)
  store i32 %49, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %152, %44
  %51 = load i32, i32* %4, align 4
  %52 = icmp sle i32 %51, 2147483647
  br i1 %52, label %53, label %155

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %124

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @png_IEND, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.file*, %struct.file** %2, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.file*, %struct.file** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @process_chunk(%struct.file* %66, i32 %67, i32 0, i32 0)
  br label %161

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add i32 8, %72
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.file*, %struct.file** %2, align 8
  %77 = call i32 @read_byte(%struct.file* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EOF, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %157

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = and i32 %84, 7
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %87
  store i32 %83, i32* %88, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, -8
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, -8
  %96 = load i32, i32* %9, align 4
  %97 = sub i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @get32(i32* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 2147483647
  br i1 %102, label %103, label %122

103:                                              ; preds = %89
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 4
  %107 = call i32 @get32(i32* %104, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @chunk_type_valid(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.file*, %struct.file** %2, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 8
  store i32 %115, i32* %113, align 4
  %116 = load %struct.file*, %struct.file** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @process_chunk(%struct.file* %116, i32 %117, i32 %118, i32 %119)
  br label %161

121:                                              ; preds = %103
  br label %122

122:                                              ; preds = %121, %89
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123, %53
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ule i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load %struct.file*, %struct.file** %2, align 8
  %130 = call i32 @read_byte(%struct.file* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @EOF, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %157

135:                                              ; preds = %128
  br label %143

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = and i32 %138, 7
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %136, %135
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %3, align 4
  %146 = ashr i32 %145, 24
  %147 = call i32 @crc_one_byte(i32 %144, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %3, align 4
  %149 = shl i32 %148, 8
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %50

155:                                              ; preds = %50
  br label %156

156:                                              ; preds = %155, %34
  br label %157

157:                                              ; preds = %156, %134, %81
  %158 = load %struct.file*, %struct.file** %2, align 8
  %159 = load i32, i32* @READ_ERROR_CODE, align 4
  %160 = call i32 @stop(%struct.file* %158, i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %111, %62
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @type_name(i32, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @file_setpos(%struct.file*, i32*) #1

declare dso_local i32 @read_4(%struct.file*, i32*) #1

declare dso_local i32 @crc_init_4(i32) #1

declare dso_local i32 @process_chunk(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @read_byte(%struct.file*) #1

declare dso_local i32 @get32(i32*, i32) #1

declare dso_local i64 @chunk_type_valid(i32) #1

declare dso_local i32 @crc_one_byte(i32, i32) #1

declare dso_local i32 @stop(%struct.file*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
