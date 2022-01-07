; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_portlistingparse.c_portlisting_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_portlistingparse.c_portlisting_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PortMapping = type { i8*, i16, i8*, i16, i8*, i8, i8*, i64 }
%struct.PortMappingParserData = type { i32, %struct.PortMapping* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @portlisting_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @portlisting_data(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.PortMapping*, align 8
  %8 = alloca %struct.PortMappingParserData*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.PortMappingParserData*
  store %struct.PortMappingParserData* %10, %struct.PortMappingParserData** %8, align 8
  %11 = load %struct.PortMappingParserData*, %struct.PortMappingParserData** %8, align 8
  %12 = getelementptr inbounds %struct.PortMappingParserData, %struct.PortMappingParserData* %11, i32 0, i32 1
  %13 = load %struct.PortMapping*, %struct.PortMapping** %12, align 8
  store %struct.PortMapping* %13, %struct.PortMapping** %7, align 8
  %14 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %15 = icmp ne %struct.PortMapping* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %109

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 63
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 63, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.PortMappingParserData*, %struct.PortMappingParserData** %8, align 8
  %23 = getelementptr inbounds %struct.PortMappingParserData, %struct.PortMappingParserData* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %108 [
    i32 128, label %25
    i32 133, label %38
    i32 129, label %45
    i32 131, label %62
    i32 132, label %69
    i32 134, label %82
    i32 135, label %89
    i32 130, label %102
  ]

25:                                               ; preds = %21
  %26 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %27 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %33 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  br label %109

38:                                               ; preds = %21
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @my_atoui(i8* %39, i32 %40)
  %42 = trunc i64 %41 to i16
  %43 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %44 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %43, i32 0, i32 1
  store i16 %42, i16* %44, align 8
  br label %109

45:                                               ; preds = %21
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 3, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %51 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @memcpy(i8* %52, i8* %53, i32 %54)
  %56 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %57 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  br label %109

62:                                               ; preds = %21
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @my_atoui(i8* %63, i32 %64)
  %66 = trunc i64 %65 to i16
  %67 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %68 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %67, i32 0, i32 3
  store i16 %66, i16* %68, align 8
  br label %109

69:                                               ; preds = %21
  %70 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %71 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %77 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  br label %109

82:                                               ; preds = %21
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @my_atoui(i8* %83, i32 %84)
  %86 = trunc i64 %85 to i8
  %87 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %88 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %87, i32 0, i32 5
  store i8 %86, i8* %88, align 8
  br label %109

89:                                               ; preds = %21
  %90 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %91 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %90, i32 0, i32 6
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @memcpy(i8* %92, i8* %93, i32 %94)
  %96 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %97 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 0, i8* %101, align 1
  br label %109

102:                                              ; preds = %21
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @my_atoui(i8* %103, i32 %104)
  %106 = load %struct.PortMapping*, %struct.PortMapping** %7, align 8
  %107 = getelementptr inbounds %struct.PortMapping, %struct.PortMapping* %106, i32 0, i32 7
  store i64 %105, i64* %107, align 8
  br label %109

108:                                              ; preds = %21
  br label %109

109:                                              ; preds = %16, %108, %102, %89, %82, %69, %62, %49, %38, %25
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @my_atoui(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
