; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_func_strftime.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_func_strftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32, i8**, i32)* @func_strftime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_strftime(i32* %0, i32* %1, i8* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tm, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i8**, i8*** %11, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %22 ]
  store i8* %24, i8** %13, align 8
  %25 = call i32 @time(i32* %14)
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 76
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @localtime_r(i32* %14, %struct.tm* %15)
  br label %34

30:                                               ; preds = %23
  %31 = call %struct.tm* @gmtime_r(i32* %14, %struct.tm* %15)
  %32 = bitcast %struct.tm* %15 to i8*
  %33 = bitcast %struct.tm* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @av_bprint_strftime(i32* %35, i8* %36, %struct.tm* %15)
  ret i32 0
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_bprint_strftime(i32*, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
