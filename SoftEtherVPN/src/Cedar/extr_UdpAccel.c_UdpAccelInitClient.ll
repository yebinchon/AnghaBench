; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelInitClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelInitClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8*, i8*, i32, i8*, i32, i32, i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"UdpAccelInitClient: server_ip=%s, server_port=%u, server_cookie=%u, client_cookie=%u\0A\00", align 1
@UDP_ACCELERATION_COMMON_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UdpAccelInitClient(%struct.TYPE_3__* %0, i32* %1, i32* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %7
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %25, %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %79

35:                                               ; preds = %31
  %36 = trunc i64 %20 to i32
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @IPToStr(i8* %22, i32 %36, i32* %37)
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @Debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %39, i8* %40, i8* %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @IsIP6(i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %79

50:                                               ; preds = %35
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @UDP_ACCELERATION_COMMON_KEY_SIZE, align 4
  %56 = call i32 @Copy(i32* %53, i32* %54, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 7
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @Copy(i32* %58, i32* %59, i32 4)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @Copy(i32* %62, i32* %63, i32 4)
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = call i32 (...) @Tick64()
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %50, %49, %34
  %80 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @Debug(i8*, i8*, i8*, i8*, i8*) #2

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
