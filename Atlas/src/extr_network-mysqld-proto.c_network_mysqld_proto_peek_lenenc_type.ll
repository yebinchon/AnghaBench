; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_peek_lenenc_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_peek_lenenc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@NETWORK_MYSQLD_LENENC_TYPE_INT = common dso_local global i32 0, align 4
@NETWORK_MYSQLD_LENENC_TYPE_NULL = common dso_local global i32 0, align 4
@NETWORK_MYSQLD_LENENC_TYPE_EOF = common dso_local global i32 0, align 4
@NETWORK_MYSQLD_LENENC_TYPE_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @g_return_val_if_fail(i32 %23, i32 -1)
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 251
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_INT, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %99

34:                                               ; preds = %2
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 251
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_NULL, align 4
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %98

44:                                               ; preds = %34
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 252
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_INT, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  br label %97

54:                                               ; preds = %44
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 253
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_INT, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  br label %96

64:                                               ; preds = %54
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 254
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %79, %82
  %84 = icmp ult i64 %83, 8
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_EOF, align 4
  %87 = load i32*, i32** %4, align 8
  store i32 %86, i32* %87, align 4
  br label %91

88:                                               ; preds = %74, %71
  %89 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_INT, align 4
  %90 = load i32*, i32** %4, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %95

92:                                               ; preds = %64
  %93 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_ERR, align 4
  %94 = load i32*, i32** %4, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %91
  br label %96

96:                                               ; preds = %95, %61
  br label %97

97:                                               ; preds = %96, %51
  br label %98

98:                                               ; preds = %97, %41
  br label %99

99:                                               ; preds = %98, %31
  ret i32 0
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
