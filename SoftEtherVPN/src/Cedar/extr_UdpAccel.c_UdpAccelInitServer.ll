; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelInitServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelInitServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"UdpAccelInitServer: client_ip=%s, client_port=%u, server_cookie=%u, client_cookie=%u\0A\00", align 1
@UDP_ACCELERATION_COMMON_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UdpAccelInitServer(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %67

25:                                               ; preds = %21
  %26 = trunc i64 %16 to i32
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @IPToStr(i8* %18, i32 %26, i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @Debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %29, i32 %32, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @IsIP6(i32* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %67

44:                                               ; preds = %25
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @UDP_ACCELERATION_COMMON_KEY_SIZE, align 4
  %50 = call i32 @Copy(i32* %47, i32* %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @Copy(i32* %52, i32* %53, i32 4)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @Copy(i32* %56, i32* %57, i32 4)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = call i32 (...) @Tick64()
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %44, %43, %24
  %68 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @Debug(i8*, i8*, i32, i32, i32) #2

declare dso_local i64 @IsIP6(i32*) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @Tick64(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
