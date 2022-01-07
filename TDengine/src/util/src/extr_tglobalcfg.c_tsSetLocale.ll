; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsSetLocale.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsSetLocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.tsSetLocale.msgLocale = private unnamed_addr constant [62 x i8] c"Invalid locale:%s, please set the valid locale in config file\00", align 16
@__const.tsSetLocale.msgCharset = private unnamed_addr constant [64 x i8] c"Invalid charset:%s, please set the valid charset in config file\00", align 16
@__const.tsSetLocale.msgCharset1 = private unnamed_addr constant [67 x i8] c"failed to get charset, please set the valid charset in config file\00", align 16
@LC_CTYPE = common dso_local global i32 0, align 4
@tsLocale = common dso_local global i8* null, align 8
@tsCharset = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsSetLocale() #0 {
  %1 = alloca [62 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca [67 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = bitcast [62 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([62 x i8], [62 x i8]* @__const.tsSetLocale.msgLocale, i32 0, i32 0), i64 62, i1 false)
  %6 = bitcast [64 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @__const.tsSetLocale.msgCharset, i32 0, i32 0), i64 64, i1 false)
  %7 = bitcast [67 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([67 x i8], [67 x i8]* @__const.tsSetLocale.msgCharset1, i32 0, i32 0), i64 67, i1 false)
  %8 = load i32, i32* @LC_CTYPE, align 4
  %9 = load i8*, i8** @tsLocale, align 8
  %10 = call i8* @setlocale(i32 %8, i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = getelementptr inbounds [62 x i8], [62 x i8]* %1, i64 0, i64 0
  %15 = load i8*, i8** @tsLocale, align 8
  %16 = call i32 @printf(i8* %14, i8* %15)
  %17 = getelementptr inbounds [62 x i8], [62 x i8]* %1, i64 0, i64 0
  %18 = load i8*, i8** @tsLocale, align 8
  %19 = call i32 (i8*, ...) @pPrint(i8* %17, i8* %18)
  br label %20

20:                                               ; preds = %13, %0
  %21 = load i8*, i8** @tsCharset, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds [67 x i8], [67 x i8]* %3, i64 0, i64 0
  %26 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [67 x i8], [67 x i8]* %3, i64 0, i64 0
  %28 = call i32 (i8*, ...) @pPrint(i8* %27)
  %29 = call i32 @exit(i32 -1) #4
  unreachable

30:                                               ; preds = %20
  %31 = load i8*, i8** @tsCharset, align 8
  %32 = call i32 @taosValidateEncodec(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %36 = load i8*, i8** @tsCharset, align 8
  %37 = call i32 @printf(i8* %35, i8* %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %39 = load i8*, i8** @tsCharset, align 8
  %40 = call i32 (i8*, ...) @pPrint(i8* %38, i8* %39)
  %41 = call i32 @exit(i32 -1) #4
  unreachable

42:                                               ; preds = %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @setlocale(i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @pPrint(i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @taosValidateEncodec(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
