; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ZipFinish.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ZipFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_18__ = type { i64, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__*, i64 }

@ZIP_VERSION = common dso_local global i64 0, align 8
@ZIP_SIGNATURE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @ZipFinish(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = icmp eq %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %146

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %104, %14
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @LIST_NUM(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %107

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call %struct.TYPE_17__* @LIST_DATA(i32 %30, i64 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  %33 = call i32 @Zero(%struct.TYPE_18__* %9, i32 136)
  %34 = call i32 @Zero(%struct.TYPE_18__* %10, i32 136)
  %35 = call i32 @Swap32(i64 33639248)
  %36 = call i8* @Endian32(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* @ZIP_VERSION, align 8
  %39 = call i32 @Swap16(i64 %38)
  %40 = call i8* @Endian16(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 21
  store i8* %40, i8** %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = call i32 @WriteZipDataHeader(%struct.TYPE_17__* %42, %struct.TYPE_18__* %10, i32 1)
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 20
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 20
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 19
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 19
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 18
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 18
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 17
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 17
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 16
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 15
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 15
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 14
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 13
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 13
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 12
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 11
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 10
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @Swap32(i64 %79)
  %81 = call i8* @Endian32(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 9
  store i8* %81, i8** %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @Swap32(i64 %85)
  %87 = call i8* @Endian32(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 8
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = call i32 @WriteFifo(%struct.TYPE_19__* %91, %struct.TYPE_18__* %9, i32 136)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = call i32 @StrLen(%struct.TYPE_18__* %101)
  %103 = call i32 @WriteFifo(%struct.TYPE_19__* %95, %struct.TYPE_18__* %98, i32 %102)
  br label %104

104:                                              ; preds = %27
  %105 = load i64, i64* %4, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %4, align 8
  br label %20

107:                                              ; preds = %20
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %6, align 8
  %113 = call i32 @Zero(%struct.TYPE_18__* %7, i32 136)
  %114 = load i64, i64* @ZIP_SIGNATURE_END, align 8
  %115 = call i32 @Swap32(i64 %114)
  %116 = call i8* @Endian32(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 7
  store i8* %116, i8** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 6
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @LIST_NUM(i32 %122)
  %124 = call i32 @Swap16(i64 %123)
  %125 = call i8* @Endian16(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i8* %125, i8** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* %5, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i32 @Swap32(i64 %130)
  %132 = call i8* @Endian32(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i8* %132, i8** %133, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @Swap32(i64 %134)
  %136 = call i8* @Endian32(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = call i32 @WriteFifo(%struct.TYPE_19__* %141, %struct.TYPE_18__* %7, i32 136)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %2, align 8
  br label %146

146:                                              ; preds = %107, %13
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %147
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @Endian32(i32) #1

declare dso_local i32 @Swap32(i64) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @Swap16(i64) #1

declare dso_local i32 @WriteZipDataHeader(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @WriteFifo(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrLen(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
