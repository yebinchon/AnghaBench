; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_register_common.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_register_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8*, i32, i32 }

@LEN_PATH_PREFIX_IGNORED = common dso_local global i64 0, align 8
@ESP_VFS_PATH_MAX = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@s_vfs_count = common dso_local global i64 0, align 8
@s_vfs = common dso_local global %struct.TYPE_4__** null, align 8
@VFS_MAX_COUNT = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i8*, i32*)* @esp_vfs_register_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_vfs_register_common(i8* %0, i64 %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @LEN_PATH_PREFIX_IGNORED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @ESP_VFS_PATH_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %28, i32* %6, align 4
  br label %128

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 47
  br i1 %37, label %46, label %38

38:                                               ; preds = %32, %29
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %48

46:                                               ; preds = %38, %32
  %47 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %47, i32* %6, align 4
  br label %128

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %5
  %50 = call i64 @malloc(i32 32)
  %51 = inttoptr i64 %50 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %12, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = icmp eq %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %55, i32* %6, align 4
  br label %128

56:                                               ; preds = %49
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @s_vfs_count, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @s_vfs, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp eq %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %72

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %57

72:                                               ; preds = %67, %57
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @s_vfs_count, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i64, i64* @s_vfs_count, align 8
  %78 = load i64, i64* @VFS_MAX_COUNT, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = call i32 @free(%struct.TYPE_4__* %81)
  %83 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %83, i32* %6, align 4
  br label %128

84:                                               ; preds = %76
  %85 = load i64, i64* @s_vfs_count, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* @s_vfs_count, align 8
  br label %87

87:                                               ; preds = %84, %72
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @s_vfs, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 %90
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @LEN_PATH_PREFIX_IGNORED, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @strcpy(i32 %98, i8* %99)
  br label %106

101:                                              ; preds = %87
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bzero(i32 %104, i32 4)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @memcpy(i32* %108, i32* %109, i32 4)
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %106
  %123 = load i64, i64* %13, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %106
  %127 = load i32, i32* @ESP_OK, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %80, %54, %46, %27
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
