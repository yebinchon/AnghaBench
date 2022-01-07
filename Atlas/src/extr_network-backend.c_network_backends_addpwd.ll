; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend.c_network_backends_addpwd.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend.c_network_backends_addpwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32**, i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to decrypt %s\0A\00", align 1
@ERR_PWD_DECRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to encrypt %s\0A\00", align 1
@ERR_PWD_ENCRYPT = common dso_local global i32 0, align 4
@copy_pwd = common dso_local global i32 0, align 4
@PWD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_backends_addpwd(%struct.TYPE_3__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = call i32* @g_string_new(i32* null)
  store i32* %16, i32** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @decrypt(i32* %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i32, i32* @ERR_PWD_DECRYPT, align 4
  store i32 %27, i32* %5, align 4
  br label %104

28:                                               ; preds = %19
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @strlen(i32* %31)
  %33 = call i32 @network_mysqld_proto_password_hash(i32* %29, i32* %30, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @g_free(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %39, i32* %40)
  %42 = call i32 @g_ptr_array_add(i32 %38, i32 %41)
  br label %67

43:                                               ; preds = %4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @encrypt(i32* %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %49)
  %51 = load i32, i32* @ERR_PWD_ENCRYPT, align 4
  store i32 %51, i32* %5, align 4
  br label %104

52:                                               ; preds = %43
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %56, i32* %57)
  %59 = call i32 @g_ptr_array_add(i32 %55, i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @g_free(i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @strlen(i32* %64)
  %66 = call i32 @network_mysqld_proto_password_hash(i32* %62, i32* %63, i32 %65)
  br label %67

67:                                               ; preds = %52, %28
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %13, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %14, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = sub i64 1, %81
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @g_hash_table_remove_all(i32* %85)
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* @copy_pwd, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @g_hash_table_foreach(i32* %87, i32 %88, i32* %89)
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @g_strdup(i32* %92)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @g_hash_table_insert(i32* %91, i32 %93, i32* %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = sub i64 1, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @g_atomic_int_set(i64* %98, i32 %101)
  %103 = load i32, i32* @PWD_SUCCESS, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %67, %48, %24
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32* @g_string_new(i32*) #1

declare dso_local i32* @decrypt(i32*) #1

declare dso_local i32 @g_warning(i8*, i32*) #1

declare dso_local i32 @network_mysqld_proto_password_hash(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_ptr_array_add(i32, i32) #1

declare dso_local i32 @g_strdup_printf(i8*, i32*, i32*) #1

declare dso_local i32* @encrypt(i32*) #1

declare dso_local i32 @g_hash_table_remove_all(i32*) #1

declare dso_local i32 @g_hash_table_foreach(i32*, i32, i32*) #1

declare dso_local i32 @g_hash_table_insert(i32*, i32, i32*) #1

declare dso_local i32 @g_strdup(i32*) #1

declare dso_local i32 @g_atomic_int_set(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
