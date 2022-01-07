; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_option_list.c_get_metadata.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_option_list.c_get_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"No names or labels found\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"classes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @get_metadata(i8* %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @read_data_cfg(i8* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @option_find_str(i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @option_find_str(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @get_labels(i8* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @option_find_int(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @free_list(i32* %31)
  %33 = bitcast { i64, i32 }* %6 to i8*
  %34 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = load { i64, i32 }, { i64, i32 }* %6, align 8
  ret { i64, i32 } %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @read_data_cfg(i8*) #2

declare dso_local i8* @option_find_str(i32*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @get_labels(i8*) #2

declare dso_local i32 @option_find_int(i32*, i8*, i32) #2

declare dso_local i32 @free_list(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
