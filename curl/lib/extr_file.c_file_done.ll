; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_file.c_file_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_file.c_file_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.FILEPROTO* }
%struct.FILEPROTO = type { i32, i32*, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @file_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_done(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.FILEPROTO*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.FILEPROTO*, %struct.FILEPROTO** %12, align 8
  store %struct.FILEPROTO* %13, %struct.FILEPROTO** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.FILEPROTO*, %struct.FILEPROTO** %7, align 8
  %17 = icmp ne %struct.FILEPROTO* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.FILEPROTO*, %struct.FILEPROTO** %7, align 8
  %20 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @Curl_safefree(i32 %21)
  %23 = load %struct.FILEPROTO*, %struct.FILEPROTO** %7, align 8
  %24 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.FILEPROTO*, %struct.FILEPROTO** %7, align 8
  %26 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.FILEPROTO*, %struct.FILEPROTO** %7, align 8
  %31 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.FILEPROTO*, %struct.FILEPROTO** %7, align 8
  %36 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %3
  %38 = load i32, i32* @CURLE_OK, align 4
  ret i32 %38
}

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
