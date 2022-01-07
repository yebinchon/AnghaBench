; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csblob_parse_teamid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csblob_parse_teamid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@CS_SUPPORTSTEAMID = common dso_local global i64 0, align 8
@cs_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"found team-id %s in cdblob\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cs_blob*)* @csblob_parse_teamid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @csblob_parse_teamid(%struct.cs_blob* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cs_blob*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  store %struct.cs_blob* %0, %struct.cs_blob** %3, align 8
  %6 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %7 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @ntohl(i64 %11)
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @CS_SUPPORTSTEAMID, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %39

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = bitcast %struct.TYPE_2__* %24 to i8*
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ntohl(i64 %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  store i8* %31, i8** %5, align 8
  %32 = load i32, i32* @cs_debug, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %37, %22, %16
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
