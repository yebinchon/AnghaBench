; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_os.c_tun_create.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_os.c_tun_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/net/tun\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"tun module not present. See https://sk.tl/2RdReigK\0A\00", align 1
@IFF_TUN = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TUNSETIFF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tun_create(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @IFNAMSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* @IFF_TUN, align 4
  %20 = load i32, i32* @IFF_NO_PI, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @IFNAMSIZ, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %31

29:                                               ; preds = %18
  %30 = load i8*, i8** %5, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %28 ], [ %30, %29 ]
  %33 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TUNSETIFF, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.ifreq* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %38, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
