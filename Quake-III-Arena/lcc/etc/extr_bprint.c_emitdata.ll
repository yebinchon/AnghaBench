; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_emitdata.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_emitdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, i32, %struct.TYPE_4__*, %struct.func*, %struct.file* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.func = type { i8*, %struct.TYPE_3__, %struct.caller*, %struct.func* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.caller = type { i32, i8*, i8*, i32, i32, %struct.caller* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@filelist = common dso_local global %struct.file* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"1\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s 1 %d %d %d ? ? 0 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s 1 %d %d %d %s %s %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"1 %d %d %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: can't create `%s'\0A\00", align 1
@progname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emitdata(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.func*, align 8
  %7 = alloca %struct.caller*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %195

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** @filelist, align 8
  store %struct.file* %12, %struct.file** %4, align 8
  br label %13

13:                                               ; preds = %188, %11
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %16, label %192

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 0, i32* %5, align 4
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 3
  %25 = load %struct.func*, %struct.func** %24, align 8
  store %struct.func* %25, %struct.func** %6, align 8
  br label %26

26:                                               ; preds = %49, %16
  %27 = load %struct.func*, %struct.func** %6, align 8
  %28 = icmp ne %struct.func* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.func*, %struct.func** %6, align 8
  %31 = getelementptr inbounds %struct.func, %struct.func* %30, i32 0, i32 2
  %32 = load %struct.caller*, %struct.caller** %31, align 8
  store %struct.caller* %32, %struct.caller** %7, align 8
  %33 = icmp ne %struct.caller* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %43, %34
  %38 = load %struct.caller*, %struct.caller** %7, align 8
  %39 = icmp ne %struct.caller* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load %struct.caller*, %struct.caller** %7, align 8
  %45 = getelementptr inbounds %struct.caller, %struct.caller* %44, i32 0, i32 5
  %46 = load %struct.caller*, %struct.caller** %45, align 8
  store %struct.caller* %46, %struct.caller** %7, align 8
  br label %37

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load %struct.func*, %struct.func** %6, align 8
  %53 = getelementptr inbounds %struct.func, %struct.func* %52, i32 0, i32 3
  %54 = load %struct.func*, %struct.func** %53, align 8
  store %struct.func* %54, %struct.func** %6, align 8
  br label %26

55:                                               ; preds = %26
  %56 = load i32*, i32** %3, align 8
  %57 = ptrtoint i32* %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 3
  %62 = load %struct.func*, %struct.func** %61, align 8
  store %struct.func* %62, %struct.func** %6, align 8
  br label %63

63:                                               ; preds = %139, %55
  %64 = load %struct.func*, %struct.func** %6, align 8
  %65 = icmp ne %struct.func* %64, null
  br i1 %65, label %66, label %143

66:                                               ; preds = %63
  %67 = load %struct.func*, %struct.func** %6, align 8
  %68 = getelementptr inbounds %struct.func, %struct.func* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.func*, %struct.func** %6, align 8
  %74 = getelementptr inbounds %struct.func, %struct.func* %73, i32 0, i32 2
  %75 = load %struct.caller*, %struct.caller** %74, align 8
  %76 = icmp ne %struct.caller* %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %72, %66
  %78 = load i32*, i32** %3, align 8
  %79 = ptrtoint i32* %78 to i32
  %80 = load %struct.func*, %struct.func** %6, align 8
  %81 = getelementptr inbounds %struct.func, %struct.func* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.func*, %struct.func** %6, align 8
  %84 = getelementptr inbounds %struct.func, %struct.func* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.func*, %struct.func** %6, align 8
  %88 = getelementptr inbounds %struct.func, %struct.func* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.func*, %struct.func** %6, align 8
  %92 = getelementptr inbounds %struct.func, %struct.func* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 %86, i32 %90, i64 %94)
  br label %138

96:                                               ; preds = %72
  %97 = load %struct.func*, %struct.func** %6, align 8
  %98 = getelementptr inbounds %struct.func, %struct.func* %97, i32 0, i32 2
  %99 = load %struct.caller*, %struct.caller** %98, align 8
  store %struct.caller* %99, %struct.caller** %7, align 8
  br label %100

100:                                              ; preds = %133, %96
  %101 = load %struct.caller*, %struct.caller** %7, align 8
  %102 = icmp ne %struct.caller* %101, null
  br i1 %102, label %103, label %137

103:                                              ; preds = %100
  %104 = load i32*, i32** %3, align 8
  %105 = ptrtoint i32* %104 to i32
  %106 = load %struct.func*, %struct.func** %6, align 8
  %107 = getelementptr inbounds %struct.func, %struct.func* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.func*, %struct.func** %6, align 8
  %110 = getelementptr inbounds %struct.func, %struct.func* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.func*, %struct.func** %6, align 8
  %114 = getelementptr inbounds %struct.func, %struct.func* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.caller*, %struct.caller** %7, align 8
  %118 = getelementptr inbounds %struct.caller, %struct.caller* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.caller*, %struct.caller** %7, align 8
  %121 = getelementptr inbounds %struct.caller, %struct.caller* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.caller*, %struct.caller** %7, align 8
  %124 = getelementptr inbounds %struct.caller, %struct.caller* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.caller*, %struct.caller** %7, align 8
  %127 = getelementptr inbounds %struct.caller, %struct.caller* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.caller*, %struct.caller** %7, align 8
  %130 = getelementptr inbounds %struct.caller, %struct.caller* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %108, i32 %112, i32 %116, i32 %119, i8* %122, i8* %125, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %103
  %134 = load %struct.caller*, %struct.caller** %7, align 8
  %135 = getelementptr inbounds %struct.caller, %struct.caller* %134, i32 0, i32 5
  %136 = load %struct.caller*, %struct.caller** %135, align 8
  store %struct.caller* %136, %struct.caller** %7, align 8
  br label %100

137:                                              ; preds = %100
  br label %138

138:                                              ; preds = %137, %77
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.func*, %struct.func** %6, align 8
  %141 = getelementptr inbounds %struct.func, %struct.func* %140, i32 0, i32 3
  %142 = load %struct.func*, %struct.func** %141, align 8
  store %struct.func* %142, %struct.func** %6, align 8
  br label %63

143:                                              ; preds = %63
  %144 = load i32*, i32** %3, align 8
  %145 = ptrtoint i32* %144 to i32
  %146 = load %struct.file*, %struct.file** %4, align 8
  %147 = getelementptr inbounds %struct.file, %struct.file* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %184, %143
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.file*, %struct.file** %4, align 8
  %153 = getelementptr inbounds %struct.file, %struct.file* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %187

156:                                              ; preds = %150
  %157 = load i32*, i32** %3, align 8
  %158 = ptrtoint i32* %157 to i32
  %159 = load %struct.file*, %struct.file** %4, align 8
  %160 = getelementptr inbounds %struct.file, %struct.file* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.file*, %struct.file** %4, align 8
  %168 = getelementptr inbounds %struct.file, %struct.file* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.file*, %struct.file** %4, align 8
  %176 = getelementptr inbounds %struct.file, %struct.file* %175, i32 0, i32 2
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %166, i32 %174, i32 %182)
  br label %184

184:                                              ; preds = %156
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %150

187:                                              ; preds = %150
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.file*, %struct.file** %4, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 4
  %191 = load %struct.file*, %struct.file** %190, align 8
  store %struct.file* %191, %struct.file** %4, align 8
  br label %13

192:                                              ; preds = %13
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @fclose(i32* %193)
  br label %200

195:                                              ; preds = %1
  %196 = load i32, i32* @stderr, align 4
  %197 = load i8*, i8** @progname, align 8
  %198 = load i8*, i8** %2, align 8
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %197, i8* %198)
  br label %200

200:                                              ; preds = %195, %192
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
