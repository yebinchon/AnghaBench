; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_get_creation_date.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_get_creation_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @get_creation_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_creation_date(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca %struct.tm, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.tm*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast [11 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 11, i1 false)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @parse_datestring(i8* %19, %struct.tm* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strftime(i8* %23, i32 11, i8* %24, %struct.tm* %8)
  br label %26

26:                                               ; preds = %22, %18
  br label %39

27:                                               ; preds = %14, %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @g_stat(i8* %28, %struct.stat* %9)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %33 = call %struct.tm* @localtime(i32* %32)
  store %struct.tm* %33, %struct.tm** %10, align 8
  %34 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.tm*, %struct.tm** %10, align 8
  %37 = call i32 @strftime(i8* %34, i32 11, i8* %35, %struct.tm* %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %38, %26
  %40 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %41 = call i8* @strdup(i8* %40)
  ret i8* %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @parse_datestring(i8*, %struct.tm*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i64 @g_stat(i8*, %struct.stat*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i8* @strdup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
