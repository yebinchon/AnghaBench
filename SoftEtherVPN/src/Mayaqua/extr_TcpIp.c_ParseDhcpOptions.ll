; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDhcpOptions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDhcpOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@DHCP_ID_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ParseDhcpOptions(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %112

17:                                               ; preds = %2
  %18 = call i32* (...) @NewBuf()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @WriteBuf(i32* %19, i8* %20, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @SeekBuf(i32* %23, i32 0, i32 0)
  %25 = call i32* @NewListFast(i32* null)
  store i32* %25, i32** %7, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  br label %26

26:                                               ; preds = %17, %107
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @ReadBuf(i32* %27, i32* %9, i32 1)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %108

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %108

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ReadBuf(i32* %36, i32* %10, i32 1)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %108

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @DHCP_ID_PRIVATE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i8* @ZeroMalloc(i32 %53)
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @Copy(i32* %56, i32* %59, i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @ReadBuf(i32* %64, i32* %70, i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @Free(i32* %75)
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %107

83:                                               ; preds = %44, %40
  %84 = call i8* @ZeroMalloc(i32 24)
  %85 = bitcast i8* %84 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i8* @ZeroMalloc(i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @ReadBuf(i32* %97, i32* %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = call i32 @Add(i32* %103, %struct.TYPE_3__* %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %8, align 8
  br label %107

107:                                              ; preds = %83, %47
  br label %26

108:                                              ; preds = %39, %34, %30
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @FreeBuf(i32* %109)
  %111 = load i32*, i32** %7, align 8
  store i32* %111, i32** %3, align 8
  br label %112

112:                                              ; preds = %108, %16
  %113 = load i32*, i32** %3, align 8
  ret i32* %113
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i8*, i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @ReadBuf(i32*, i32*, i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
