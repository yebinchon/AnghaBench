; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_withname.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_withname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_dl = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifnet* @if_withname(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %8 = load i32, i32* @IFNAMSIZ, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %14 = bitcast %struct.sockaddr* %13 to i8*
  %15 = bitcast i8* %14 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %15, %struct.sockaddr_dl** %6, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_LINK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFNAMSIZ, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %21, %1
  store %struct.ifnet* null, %struct.ifnet** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

33:                                               ; preds = %26
  %34 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bcopy(i32 %36, i8* %12, i32 %39)
  %41 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %42 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %12, i64 %44
  store i8 0, i8* %45, align 1
  %46 = call %struct.ifnet* @ifunit(i8* %12)
  store %struct.ifnet* %46, %struct.ifnet** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %33, %32
  %48 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  ret %struct.ifnet* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bcopy(i32, i8*, i32) #2

declare dso_local %struct.ifnet* @ifunit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
