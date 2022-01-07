; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_id2guid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_id2guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kauth_null_guid = common dso_local global i32 0, align 4
@nfs_idmap_ctrl = common dso_local global i32 0, align 4
@NFS_IDMAP_CTRL_USE_IDMAP_SERVICE = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_id2guid(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* @kauth_null_guid, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  store i64 1, i64* %10, align 8
  store i8* null, i8** %12, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %39, %3
  %18 = load i8*, i8** %11, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sgt i32 %29, 57
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  store i8* %38, i8** %12, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  br label %17

42:                                               ; preds = %17
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strtol(i8* %51, i32* null, i32 10)
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ -2, %53 ]
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @kauth_cred_gid2guid(i32 %61, i32* %62)
  store i32 %63, i32* %8, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @kauth_cred_uid2guid(i32 %66, i32* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @nfs4_mapid_log(i32 %70, i8* %71, i32 %72, i32* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %176

76:                                               ; preds = %42
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @nfs4_wkid2sid(i8* %77, i32* %9)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @kauth_cred_ntsid2guid(i32* %9, i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @nfs4_mapid_log(i32 %84, i8* %85, i32 1, i32* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %176

89:                                               ; preds = %76
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = call i8* @nfs4_map_domain(i8* %99, i8** %12)
  store i8* %100, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i8*, i8** %13, align 8
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %103, %98
  br label %106

106:                                              ; preds = %105, %92, %89
  %107 = load i32, i32* @nfs_idmap_ctrl, align 4
  %108 = load i32, i32* @NFS_IDMAP_CTRL_USE_IDMAP_SERVICE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8*, i8** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @kauth_cred_grnam2guid(i8* %115, i32* %116)
  store i32 %117, i32* %8, align 4
  br label %122

118:                                              ; preds = %111
  %119 = load i8*, i8** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @kauth_cred_pwnam2guid(i8* %119, i32* %120)
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* %8, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @nfs4_mapid_log(i32 %123, i8* %124, i32 %125, i32* %126)
  br label %130

128:                                              ; preds = %106
  %129 = load i32, i32* @ENOTSUP, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %122
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  %134 = load i8*, i8** %5, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = icmp ne i8* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i64 @nfs4_fallback_name(i8* %134, i32 %137)
  store i64 %138, i64* %10, align 8
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i64, i64* %10, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @kauth_cred_gid2guid(i32 %143, i32* %144)
  store i32 %145, i32* %8, align 4
  br label %151

146:                                              ; preds = %133
  %147 = load i64, i64* %10, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @kauth_cred_uid2guid(i32 %148, i32* %149)
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %146, %141
  %152 = load i32, i32* %8, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @nfs4_mapid_log(i32 %152, i8* %153, i32 %154, i32* %155)
  br label %157

157:                                              ; preds = %151, %130
  %158 = load i8*, i8** %12, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i8*, i8** %12, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %12, align 8
  store i8 64, i8* %166, align 1
  br label %167

167:                                              ; preds = %165, %160, %157
  %168 = load i8*, i8** %13, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* @M_TEMP, align 4
  %173 = call i32 @FREE(i8* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %167
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %81, %69
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @kauth_cred_gid2guid(i32, i32*) #1

declare dso_local i32 @kauth_cred_uid2guid(i32, i32*) #1

declare dso_local i32 @nfs4_mapid_log(i32, i8*, i32, i32*) #1

declare dso_local i32 @nfs4_wkid2sid(i8*, i32*) #1

declare dso_local i32 @kauth_cred_ntsid2guid(i32*, i32*) #1

declare dso_local i8* @nfs4_map_domain(i8*, i8**) #1

declare dso_local i32 @kauth_cred_grnam2guid(i8*, i32*) #1

declare dso_local i32 @kauth_cred_pwnam2guid(i8*, i32*) #1

declare dso_local i64 @nfs4_fallback_name(i8*, i32) #1

declare dso_local i32 @FREE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
