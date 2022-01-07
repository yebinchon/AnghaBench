; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_NextFile.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_NextFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i8*, i32*, i64, i32, i8**, i8*, i64, i8*, i64, i64, i64, i64 }

@BROTLI_FALSE = common dso_local global i8* null, align 8
@BROTLI_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"empty output file name for [%s] input file\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"input file [%s] suffix mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @NextFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @NextFile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %26, i8** %2, align 8
  br label %201

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i8* null, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 14
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 12
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %35, i8** %2, align 8
  br label %201

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %50, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %40, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %68, i8** %2, align 8
  br label %201

69:                                               ; preds = %59
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load i8**, i8*** %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %72, i64 %76
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %4, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i64 @strlen(i8* %79)
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp eq i64 %81, 1
  br i1 %82, label %83, label %98

83:                                               ; preds = %69
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i8* null, i8** %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 14
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 12
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %97, i8** %2, align 8
  br label %201

98:                                               ; preds = %83, %69
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @FileSize(i8* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 14
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 12
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 14
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %98
  %116 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %116, i8** %2, align 8
  br label %201

117:                                              ; preds = %98
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 13
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %123, i8** %2, align 8
  br label %201

124:                                              ; preds = %117
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @strcpy(i64 %127, i8* %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 12
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 11
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %190

139:                                              ; preds = %124
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 8
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strlen(i8* %142)
  store i64 %143, i64* %6, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @FileName(i64 %146)
  %148 = inttoptr i64 %147 to i8*
  store i8* %148, i8** %7, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = call i64 @strlen(i8* %149)
  store i64 %150, i64* %9, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 1
  %154 = icmp ult i64 %151, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %139
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8*, i8** %4, align 8
  %158 = call i8* @PrintablePath(i8* %157)
  %159 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %158)
  %160 = load i8*, i8** @BROTLI_TRUE, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 10
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %163, i8** %2, align 8
  br label %201

164:                                              ; preds = %139
  %165 = load i8*, i8** %7, align 8
  %166 = load i64, i64* %9, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i64, i64* %6, align 8
  %169 = sub i64 0, %168
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8* %170, i8** %8, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 8
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = call i64 @strcmp(i8* %173, i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %164
  %178 = load i32, i32* @stderr, align 4
  %179 = load i8*, i8** %4, align 8
  %180 = call i8* @PrintablePath(i8* %179)
  %181 = call i32 @fprintf(i32 %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %180)
  %182 = load i8*, i8** @BROTLI_TRUE, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 10
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %185, i8** %2, align 8
  br label %201

186:                                              ; preds = %164
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %189, i8** %2, align 8
  br label %201

190:                                              ; preds = %124
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %5, align 8
  %195 = add i64 %193, %194
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 8
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strcpy(i64 %195, i8* %198)
  %200 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %200, i8** %2, align 8
  br label %201

201:                                              ; preds = %190, %186, %177, %155, %122, %115, %89, %67, %27, %25
  %202 = load i8*, i8** %2, align 8
  ret i8* %202
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @FileSize(i8*) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i64 @FileName(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @PrintablePath(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
