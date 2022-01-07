; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_glfile.c_WriteGLView.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_glfile.c_WriteGLView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@c_glfaces = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s%s.gl\00", align 1
@outbase = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Couldn't open %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%5i c_glfaces\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteGLView(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** @c_glfaces, align 8
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %8 = load i8*, i8** @outbase, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %9)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %12 = call i32 @_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %19 = call i32 @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @WriteGLView_r(i32 %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @fclose(i32* %26)
  %28 = load i8*, i8** @c_glfaces, align 8
  %29 = call i32 @_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @_printf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @WriteGLView_r(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
