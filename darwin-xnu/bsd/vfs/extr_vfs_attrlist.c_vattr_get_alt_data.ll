; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_vattr_get_alt_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_vattr_get_alt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attrlist = type { i32, i32, i32 }
%struct.vnode_attr = type { i32, i32 }

@ATTR_CMN_OBJID = common dso_local global i32 0, align 4
@ATTR_CMN_OBJPERMANENTID = common dso_local global i32 0, align 4
@ATTR_CMN_FILEID = common dso_local global i32 0, align 4
@va_linkid = common dso_local global i32 0, align 4
@ATTR_CMN_PAROBJID = common dso_local global i32 0, align 4
@ATTR_CMN_PARENTID = common dso_local global i32 0, align 4
@va_parentid = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@va_fileid = common dso_local global i32 0, align 4
@ATTR_FILE_DATALENGTH = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@ATTR_FILE_DATAALLOCSIZE = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4
@ATTR_CMN_SCRIPT = common dso_local global i32 0, align 4
@va_encoding = common dso_local global i32 0, align 4
@ATTR_CMN_NAME = common dso_local global i32 0, align 4
@va_name = common dso_local global i32 0, align 4
@ATTR_DIR_LINKCOUNT = common dso_local global i32 0, align 4
@va_dirlinkcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.attrlist*, %struct.vnode_attr*, i32, i32, i32)* @vattr_get_alt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vattr_get_alt_data(i64 %0, %struct.attrlist* %1, %struct.vnode_attr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.attrlist*, align 8
  %9 = alloca %struct.vnode_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.vnode_attr, align 4
  store i64 %0, i64* %7, align 8
  store %struct.attrlist* %1, %struct.attrlist** %8, align 8
  store %struct.vnode_attr* %2, %struct.vnode_attr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %16 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATTR_CMN_OBJID, align 4
  %19 = load i32, i32* @ATTR_CMN_OBJPERMANENTID, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ATTR_CMN_FILEID, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %6
  %26 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %27 = load i32, i32* @va_linkid, align 4
  %28 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %32 = load i32, i32* @va_linkid, align 4
  %33 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25, %6
  %35 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %36 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATTR_CMN_PAROBJID, align 4
  %39 = load i32, i32* @ATTR_CMN_PARENTID, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %34
  %44 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %45 = load i32, i32* @va_parentid, align 4
  %46 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @vnode_getparent(i64 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* @NULLVP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %54
  %60 = call i32 @VATTR_INIT(%struct.vnode_attr* %14)
  %61 = load i32, i32* @va_fileid, align 4
  %62 = call i32 @VATTR_WANTED(%struct.vnode_attr* %14, i32 %61)
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @vnode_getattr(i64 %63, %struct.vnode_attr* %14, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %69 = load i32, i32* @va_fileid, align 4
  %70 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %76 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %78 = load i32, i32* @va_parentid, align 4
  %79 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %67, %59
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @vnode_put(i64 %81)
  br label %83

83:                                               ; preds = %80, %54
  br label %84

84:                                               ; preds = %83, %51, %48, %43, %34
  %85 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %86 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATTR_FILE_DATALENGTH, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %93 = load i32, i32* @va_data_size, align 4
  %94 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %98 = load i32, i32* @va_data_size, align 4
  %99 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %91, %84
  %101 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %102 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATTR_FILE_DATAALLOCSIZE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %109 = load i32, i32* @va_data_alloc, align 4
  %110 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %114 = load i32, i32* @va_data_alloc, align 4
  %115 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %107, %100
  %117 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %118 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ATTR_CMN_SCRIPT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %125 = load i32, i32* @va_encoding, align 4
  %126 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %133 = load i32, i32* @va_encoding, align 4
  %134 = call i32 @VATTR_RETURN(%struct.vnode_attr* %132, i32 %133, i32 126)
  br label %135

135:                                              ; preds = %131, %128, %123, %116
  %136 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %137 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ATTR_CMN_NAME, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %144 = load i32, i32* @va_name, align 4
  %145 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %142
  %148 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %149 = load i32, i32* @va_name, align 4
  %150 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %142, %135
  %152 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %153 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ATTR_DIR_LINKCOUNT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %160 = load i32, i32* @va_dirlinkcount, align 4
  %161 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %165 = load i32, i32* @va_dirlinkcount, align 4
  %166 = call i32 @VATTR_RETURN(%struct.vnode_attr* %164, i32 %165, i32 1)
  br label %167

167:                                              ; preds = %163, %158, %151
  ret void
}

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i64 @vnode_getparent(i64) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @vnode_getattr(i64, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_put(i64) #1

declare dso_local i32 @VATTR_RETURN(%struct.vnode_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
