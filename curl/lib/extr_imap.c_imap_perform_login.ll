; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_login.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@IMAP_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"LOGIN %s %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IMAP_LOGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_login(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %15 = load i32, i32* @IMAP_STOP, align 4
  %16 = call i32 @state(%struct.connectdata* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @imap_atom(i32 %21, i32 0)
  store i8* %22, i8** %5, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @imap_atom(i32 %25, i32 0)
  store i8* %26, i8** %6, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  br label %33

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %32 ]
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = call i32 @imap_sendf(%struct.connectdata* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %51 = load i32, i32* @IMAP_LOGIN, align 4
  %52 = call i32 @state(%struct.connectdata* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i8* @imap_atom(i32, i32) #1

declare dso_local i32 @imap_sendf(%struct.connectdata*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
