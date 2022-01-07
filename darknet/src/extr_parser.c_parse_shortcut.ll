; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_shortcut.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_shortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"beta\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_shortcut(%struct.TYPE_10__* noalias sret %0, i32* %1, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @option_find(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = bitcast %struct.TYPE_10__* %10 to i8*
  %34 = bitcast %struct.TYPE_10__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  call void @make_shortcut_layer(%struct.TYPE_10__* sret %0, i32 %35, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48)
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @option_find_str(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @get_activation(i8* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @option_find_float_quiet(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i8* @option_find_float_quiet(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  ret void
}

declare dso_local i8* @option_find(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @make_shortcut_layer(%struct.TYPE_10__* sret, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local i8* @option_find_float_quiet(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
